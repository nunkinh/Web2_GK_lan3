using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web2.Areas.Admin.Models.BUS;

namespace Web2.Areas.Admin.Controllers
{
    public class QuanLySPController : Controller
    {
        // GET: Admin/QuuanLySP
        public ActionResult Index(int page = 1, int pageSize = 8)
        {
            var ds = QuanLySanPhamBUS.DanhSach().ToPagedList(page, pageSize);
            return View(ds);
        }

        // GET: Admin/QuuanLySP/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QuuanLySP/Create
        public ActionResult Create()
        {

            return View();
        }

        // POST: Admin/QuuanLySP/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuuanLySP/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Admin/QuuanLySP/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuuanLySP/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/QuuanLySP/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
