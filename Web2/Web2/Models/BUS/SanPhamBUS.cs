using CellPhoneConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web2.Models.BUS
{
    public class SanPhamBus
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new CellPhoneConnectionDB();
            return db.Query<SanPham>("select * from SanPham");
        }
        public static SanPham ChiTiet(int id)
        {
            var db = new CellPhoneConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where a_ID = @0", id);
        }
    }
}