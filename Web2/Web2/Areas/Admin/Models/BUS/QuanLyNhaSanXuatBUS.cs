using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Areas.Admin.Models
{
    public class QuanLyNhaSanXuatBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<NhaSanXuat>("select * from NhaSanXuat");
        }
        public static IEnumerable<SanPham> ChiTIet(int id_NhaSanXuat)
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<SanPham>("select * from SanPham where a_HangSanXuat = " + id_NhaSanXuat);
        }
        public static void Them1NSX(NhaSanXuat nsx)
        {
            var db = new CellPhoneConnectionDB();
            db.Insert("NhaSanXuat","a_IDNhaSX",true, nsx);
        }
    }
}