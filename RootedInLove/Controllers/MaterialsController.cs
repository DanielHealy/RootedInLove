using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using RootedInLove.Models;

namespace RootedInLove.Controllers
{
    public class MaterialsController : Controller
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

            author.Materials =
                (from material in database.Materials
                 where material.Author_ID == author.ID
                 select material).ToList();

            List<Category> categories = database.Categories.ToList();

            foreach (Material material in author.Materials)
            {
                material.Category = categories.Find(x => x.ID == material.Category_ID);
            }

            return View(author);
        }

        public IActionResult Material(string id)
        {
            Material material =
                 (from item in database.Materials
                  where item.URLReference == id
                  select item).FirstOrDefault();

            if (material == null)
            {
                return View("Error");
            }
            material.Author = database.Authors.Find(material.Author_ID);
            material.Category = database.Categories.Find(material.Category_ID);

            return View(material);
        }

        public ActionResult Pricing()
        {
            return View(database.Categories.ToList());
        }

    }
}