using CellPhoneConnection;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web2.Areas.Admin.Models;
using Web2.Areas.Admin.Models.BUS;

namespace Web2.Areas.Admin.Controllers
{
    public class QuanLyLSPController : Controller
    {
        // GET: Admin/QuanLyLSP
        public ActionResult Index(int page = 1, int pageSize = 4)
        {
            var ds = QuanLyLoaiSanPhamBUS.DanhSach().ToPagedList(page, pageSize);
            return View(ds);
        }

        // GET: Admin/QuanLyLSP/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QuanLyLSP/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QuanLyLSP/Create
        [HttpPost]
        public ActionResult Create(LoaiSanPham item)
        {
            try
            {
                // TODO: Add insert logic here
                QuanLyLoaiSanPhamBUS.Them1LSP(item);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLyLSP/Edit/5
        public ActionResult Edit(int id)
        {
            return View(QuanLyLoaiSanPhamBUS.ChiTIet(id));
        }

        // POST: Admin/QuanLyLSP/Edit/5
        [HttpPost]
        public ActionResult Edit(LoaiSanPham item)
        {
            try
            {
                // TODO: Add update logic here
                QuanLyLoaiSanPhamBUS.CapNhat1LSP(item);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLyLSP/Deny/5
        public ActionResult Deny(int id)
        {
            QuanLyLoaiSanPhamBUS.Deny(id);
            return Redirect(HttpContext.Request.UrlReferrer.AbsoluteUri);
        }
        // GET: Admin/QuanLyLSP/Allow/5
        public ActionResult Allow(int id)
        {
            QuanLyLoaiSanPhamBUS.Allow(id);
            return Redirect(HttpContext.Request.UrlReferrer.AbsoluteUri);
        }
        // POST: Admin/QuanLyLSP/Delete/5
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
