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
        public static NhaSanXuat ChiTIet(int id_NhaSanXuat)
        {
            var db = new CellPhoneConnectionDB();
            return db.SingleOrDefault<NhaSanXuat>("select * from NhaSanXuat where a_IDNhaSX = @0", id_NhaSanXuat);
        }
        public static void Them1NSX(NhaSanXuat nsx)
        {
            var db = new CellPhoneConnectionDB();
            db.Insert("NhaSanXuat","a_IDNhaSX",true, nsx);
        }
        public static void CapNhat1NSX(NhaSanXuat nsx)
        {
            var db = new CellPhoneConnectionDB();
            db.Update("NhaSanXuat", "a_IDNhaSX", nsx);
        }
        public static void Deny(int id)
        {
            var db = new CellPhoneConnectionDB();
            NhaSanXuat ob = db.SingleOrDefault<NhaSanXuat>("select * from NhaSanXuat where a_IDNhaSX = @0", id);
            if (ob.a_TinhTrang == 0)
            {
                ob.a_TinhTrang = 1;
                db.Update("NhaSanXuat", "a_IDNhaSX", ob);
            }
        }
        public static void Allow(int id)
        {
            var db = new CellPhoneConnectionDB();
            NhaSanXuat ob = db.SingleOrDefault<NhaSanXuat>("select * from NhaSanXuat where a_IDNhaSX = @0", id);
            if (ob.a_TinhTrang == 1)
            {
                ob.a_TinhTrang = 0;
                db.Update("NhaSanXuat", "a_IDNhaSX", ob);
            }
        }
    }
}