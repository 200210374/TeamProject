using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TeamProject.Models;



namespace TeamProject.Controllers
{
    public class gameTrackerController : Controller
    {
        // GET: gameTracker
        public ActionResult Index()
        {

            var entities = new tracker();

            return View(entities.gameTrackerSet.ToList());
        }
    }
}