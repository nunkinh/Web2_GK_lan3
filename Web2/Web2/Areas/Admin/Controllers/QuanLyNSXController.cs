﻿using CellPhoneConnection;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web2.Areas.Admin.Models;

namespace Web2.Areas.Admin.Controllers
{
    public class QuanLyNSXController : Controller
    {
        // GET: Admin/QuanLyNhaSanXuat
        public ActionResult Index(int page = 1, int pageSize = 4)
        {
            var ds = QuanLyNhaSanXuatBUS.DanhSach().ToPagedList(page, pageSize);
            return View(ds);
        }

        // GET: Admin/QuanLyNhaSanXuat/Details/5
        public ActionResult Details(int id)
        {
            return View(QuanLyNhaSanXuatBUS.ChiTIet(id));
        }

        // GET: Admin/QuanLyNhaSanXuat/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QuanLyNhaSanXuat/Create
        [HttpPost]
        public ActionResult Create(NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add insert logic here
                QuanLyNhaSanXuatBUS.Them1NSX(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLyNhaSanXuat/Edit/5
        public ActionResult Edit(int id)
        {
            return View(QuanLyNhaSanXuatBUS.ChiTIet(id));
        }

        // POST: Admin/QuanLyNhaSanXuat/Edit/5
        [HttpPost]
        public ActionResult Edit(NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add update logic here
                QuanLyNhaSanXuatBUS.CapNhat1NSX(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLyNhaSanXuat/Deny/5
        public ActionResult Deny(int id)
        {
            QuanLyNhaSanXuatBUS.Deny(id);
            return Redirect(HttpContext.Request.UrlReferrer.AbsoluteUri);
        }
        // GET: Admin/QuanLyNhaSanXuat/Allow/5
        public ActionResult Allow(int id)
        {
            QuanLyNhaSanXuatBUS.Allow(id);
            return Redirect(HttpContext.Request.UrlReferrer.AbsoluteUri);
        }
        // POST: Admin/QuanLyNhaSanXuat/Delete/5
        [HttpPost]
        public ActionResult Delete(FormCollection collection)
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
