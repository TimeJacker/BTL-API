using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class SanPhamModel
    {

        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public string Anh { get; set; }
        public int SoLuong { get; set; }
        public string Mota { get; set; }
        public DateTime NgayTao { get; set; }
        public float Gia { get; set; }
        public string KichCoManHinh { get; set; }
        public string DoPhanGiai { get; set; }


        //public List<ThongSoKyThuatModel> list_jsonThongSoKyThuat { get; set; }//
        public LoaiSanPhamModel loaiSanPham { get; set; }
    }

}
