﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class HoaDonModel
    {
        public int MaHoaDon { get; set; }
        public string TenKH { get; set; }
        public string Diachi { get; set; }
        public string GioiTinh { get; set; }
        public DateTime NgayTao { get; set; }
        public DateTime NgayDuyet { get; set; }
        public decimal TongGia { get; set; }
        public string Email { get; set; }
        public string SDT { get; set; }
        public string DiaChiGiaoHang { get; set; }
        public DateTime ThoiGianGiaoHang { get; set; }
        public bool TrangThai { get; set; }
        public List<ChiTietHoaDonModel> list_json_chitiethoadon { get; set; }
    }
    public class ChiTietHoaDonModel
    {
        public int MaChiTietHoaDon { get; set; }
        public int MaHoaDon { get; set; }
        public int MaSanPham { get; set; }
        public int SoLuong { get; set; }
        public double TongGia { get; set; }
        public int status { get; set; }
    }
}
