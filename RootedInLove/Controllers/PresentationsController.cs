using Microsoft.AspNetCore.Mvc;
using RootedInLove.Models;
using System.Linq;

namespace RootedInLove.Controllers
{
    public class PresentationsController : Controller
    {
        Context database = new Context();

        public IActionResult Index(string id)
        {
            Author author =
                 (from person in database.Authors
                  where person.URLReference == id
                  select person).FirstOrDefault();

            if (author == null)
            {
                return View("Error");
            }

            author.Presentations =
                (from presentation in database.Presentations
                 where presentation.Author_ID == author.ID
                 select presentation).ToList();

            return View(author);
        }

        public IActionResult Presentation(string id)
        {
            Presentation presentation =
                 (from seminar in database.Presentations
                  where seminar.URLReference == id
                  select seminar).FirstOrDefault();

            if (presentation == null)
            {
                return View("Error");
            }
            presentation.Author = database.Authors.Find(presentation.Author_ID);

            return View(presentation);
        }
    }
}