using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Areas.Admin.Models.BUS
{
    public class QuanLySanPhamBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<SanPham>("select * from SanPham");
        }
        public static void Them1SP(SanPham sp)
        {
            var db = new CellPhoneConnectionDB();
            db.Insert("NhaSanXuat", "a_IDNhaSX", true, sp);
        }
        public static NhaSanXuat ChiTIetSP(int id_SanPham)
        {
            var db = new CellPhoneConnectionDB();
            return db.SingleOrDefault<NhaSanXuat>("select * from NhaSanXuat where a_ID = @0", id_SanPham);
        }

        public static void CapNhat1SP(SanPham sp)
        {
            var db = new CellPhoneConnectionDB();
            db.Update("NhaSanXuat", "a_ID", sp);
        }
    }
}