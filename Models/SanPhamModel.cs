namespace Models
{
    public class SanPhamModel
    {
        public int MaSanPham { get; set; }
        public int MaChuyenMuc { get; set; }
        public string TenSanPham { get; set; }
        public string AnhDaiDien { get; set; }
        public decimal Gia { get; set; }
        public decimal GiaGiam { get; set; }
        public int SoLuong { get; set; }
        public int TrangThai { get; set; }
        public int LuotXem { get; set; }
        public int DacBiet { get; set; }

    }
}