using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Models.BUS
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<NhaSanXuat>("select * from NhaSanXuat where a_TinhTrang = @0", 0);
        }
        public static IEnumerable<SanPham> ChiTIet(int id_NhaSanXuat)
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<SanPham>("select * from SanPham where a_HangSanXuat = @0", id_NhaSanXuat);
        }
    }
}