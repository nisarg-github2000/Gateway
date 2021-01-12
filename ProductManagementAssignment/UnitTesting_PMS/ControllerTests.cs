using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using ProductManagementAssignment;
using ProductManagementAssignment.Controllers;

namespace UnitTesting_PMS
{
    [TestClass]
    public class ControllerTests
    {
        [TestMethod]
        public void Index()
        {
            //Arrange
            LoginController controller = new LoginController();

            //Act
            ViewResult result = controller.Index() as ViewResult;

            //Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void Signup()
        {
            //Arrange
            LoginController controller = new LoginController();

            //Act
            ViewResult result = controller.Signup() as ViewResult;

            //Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void Create()
        {
            //Arrange
            ProductController controller = new ProductController();

            //Act
            ViewResult result = controller.Create() as ViewResult;

            //Assert
            Assert.IsNotNull(result);
        }
    }
}
