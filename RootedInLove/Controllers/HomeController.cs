using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using RootedInLove.Models;

namespace RootedInLove.Controllers
{
    public class HomeController : Controller
    {
        Context database = new Context();
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About(string id="JamesHealy")
        {
            Author author =
                (from person in database.Authors
                 where person.URLReference == id
                 select person).FirstOrDefault();
            if (author == null)
            {
                return View("Error");
            }
            return View(author);
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
