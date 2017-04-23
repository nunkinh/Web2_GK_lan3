using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web2.Models.BUS;

namespace Web2.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(int id, int page = 1, int pageSize = 8)
        {
            var ds = NhaSanXuatBUS.ChiTIet(id).ToPagedList(page, pageSize); ;
            return View(ds);
        }
    }
}