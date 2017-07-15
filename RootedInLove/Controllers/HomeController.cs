using Microsoft.AspNetCore.Mvc;
using RootedInLove.Models;
using System.Linq;
namespace RootedInLove.Controllers
{
    public class HomeController : Controller
    {
        Context database = new Context();
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
            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
