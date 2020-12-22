using log4net;
using SourceControlAssignmentFinal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SourceControlAssignmentFinal.Controllers
{
    public class LoginController : Controller
    {
        
        private static log4net.ILog Log { get; set; }

        ILog log = log4net.LogManager.GetLogger(typeof(LoginController));

        //log4net 

        SignUpLoginDatabaseEntities db = new SignUpLoginDatabaseEntities();
        // GET: Login
        public ActionResult Index()
        {
            log.Debug("Debug message");
            log.Warn("Warning message");
            log.Error("Error message");
            log.Fatal("Fatal message");
            return View();
        }
        
        [HttpPost]
        public ActionResult Index(user u)
        {
            var user = db.users.Where(model => model.username == u.username && model.password == u.password).FirstOrDefault();
            if(user != null)
            {
                Session["UserId"] = u.Id.ToString();
                Session["Username"] = u.username.ToString();
                TempData["LoginSuccessMessage"] = "<script>alert('Login Successfull !!')</script>";
                return RedirectToAction("Index", "User");
            }
            else
            {
                ViewBag.ErrorMessage = "<script>alert('Username or Password is incorrect!!')</script>";
                return View();
            }
            return View();
        }

        public ActionResult Signup()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Signup(user u)
        {
            if(ModelState.IsValid == true)
            {
                db.users.Add(u);
                int a = db.SaveChanges();
                if(a > 0)
                {
                    ViewBag.InsertMessage = "<script>alert('Registered Successfully !!')</script>";
                    ModelState.Clear();
                }
                else
                {
                    ViewBag.InsertMessage = "<script>alert('Registration failed !!')</script>";
                }
            }
            return View();
        }
    }
}