using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Areas.Admin.Models.BUS
{
    public class QuanLyLoaiSanPhamBUS
    {
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham");
        }
        public static LoaiSanPham ChiTIet(int id)
        {
            var db = new CellPhoneConnectionDB();
            return db.SingleOrDefault<LoaiSanPham>("select * from LoaiSanPham where a_IDLoaiSP = @0", id);
        }
        public static void Them1LSP(LoaiSanPham item)
        {
            var db = new CellPhoneConnectionDB();
            db.Insert("LoaiSanPham", "a_IDLoaiSP", true, item);
        }
        public static void CapNhat1LSP(LoaiSanPham item)
        {
            var db = new CellPhoneConnectionDB();
            db.Update("LoaiSanPham", "a_IDLoaiSP", item);
        }
        public static void Deny(int id)
        {
            var db = new CellPhoneConnectionDB();
            LoaiSanPham ob = db.SingleOrDefault<LoaiSanPham>("select * from LoaiSanPham where a_IDLoaiSP = @0", id);
            if (ob.a_TinhTrang == 0)
            {
                ob.a_TinhTrang = 1;
                db.Update("LoaiSanPham", "a_IDLoaiSP", ob);
            }
        }
        public static void Allow(int id)
        {
            var db = new CellPhoneConnectionDB();
            LoaiSanPham ob = db.SingleOrDefault<LoaiSanPham>("select * from LoaiSanPham where a_IDLoaiSP = @0", id);
            if (ob.a_TinhTrang == 1)
            {
                ob.a_TinhTrang = 0;
                db.Update("LoaiSanPham", "a_IDLoaiSP", ob);
            }
        }
    }
}