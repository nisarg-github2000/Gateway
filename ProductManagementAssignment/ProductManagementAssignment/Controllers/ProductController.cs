using ProductManagementAssignment.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Data.Entity;
using PagedList.Mvc;
using PagedList;

namespace ProductManagementAssignment.Controllers
{
    public class ProductController : Controller
    {
        ProductDBEntities db = new ProductDBEntities();

        // GET: Product
        public ActionResult Index(string sortOrder, string currentFilter, string searchString, int? page)
        {
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParm = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewBag.CategorySortParm = sortOrder == "" ? "category_desc" : "Category";

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewBag.CurrentFilter = searchString;

            var products = from s in db.products
                           select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                products = products.Where(s => s.Name.Contains(searchString)
                                       || s.Category.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    products = products.OrderByDescending(s => s.Name);
                    break;
                case "Category":
                    products = products.OrderBy(s => s.Category);
                    break;
                case "date_desc":
                    products = products.OrderByDescending(s => s.Category);
                    break;
                default:
                    products = products.OrderBy(s => s.Name);
                    break;
            }
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(products.ToPagedList(pageNumber, pageSize));
        }

        // GET: Product/Details/5
        public ActionResult Details(int id)
        {
            return View(db.products.Where(x => x.ProductId == id).FirstOrDefault());
        }

        // GET: Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Product/Create
        [HttpPost]
        public ActionResult Create(product p)
        {
            try
            {
                string fileName = Path.GetFileNameWithoutExtension(p.ImageFile.FileName);
                string extension = Path.GetExtension(p.ImageFile.FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                p.Image = "~/Image/" + fileName;
                fileName = Path.Combine(Server.MapPath("~/Image/"), fileName);
                p.ImageFile.SaveAs(fileName);
                db.products.Add(p);
                db.SaveChanges();
                ModelState.Clear();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Product/Edit/5
        public ActionResult Edit(int id)
        {
            return View(db.products.Where(x => x.ProductId == id).FirstOrDefault());
        }

        // POST: Product/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, product p)
        {
            try
            {
                string fileName = Path.GetFileNameWithoutExtension(p.ImageFile.FileName);
                string extension = Path.GetExtension(p.ImageFile.FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                p.Image = "~/Image/" + fileName;
                fileName = Path.Combine(Server.MapPath("~/Image/"), fileName);
                p.ImageFile.SaveAs(fileName);
                db.Entry(p).State = EntityState.Modified;
                db.SaveChanges();
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Product/Delete/5
        public ActionResult Delete(int id)
        {
            return View(db.products.Where(x => x.ProductId == id).FirstOrDefault());
        }

        // POST: Product/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                product p = db.products.Where(x => x.ProductId == id).FirstOrDefault();
                db.products.Remove(p);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
