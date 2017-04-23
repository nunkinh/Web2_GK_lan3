using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham");
        }
    }
}