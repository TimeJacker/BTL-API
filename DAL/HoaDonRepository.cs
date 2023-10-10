﻿using Microsoft.Extensions.Configuration;
using Models;

namespace DAL
{
    public class HoaDonRepository:IHoaDonRepository
    {
       
        private IDatabaseHelper _dbHelper;
        public HoaDonRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public HoaDonModel GetDataByID(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_hoadon_get_by_id", "@MaHoaDon", id);
                if(!string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(msgError);
                }
                return dt.ConvertTo<HoaDonModel>().FirstOrDefault();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Create(HoaDonModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_hoadon_create",
                "@TenKH", model.TenKH,
                "@Diachi", model.Diachi,
                "@GioiTinh", model.GioiTinh,
                "@NgayTao", model.NgayTao,
                "@NgayDuyet", model.NgayDuyet,
                "@TongGia", model.TongGia,
                "@Email", model.Email,
                "@SDT", model.SDT,
                "@DiaChiGiaoHang", model.DiaChiGiaoHang,
                "@ThoiGianGiaoHang", model.ThoiGianGiaoHang,
                "@TrangThai", model.TrangThai,
                "@list_json_chitiethoadon", model.list_json_chitiethoadon != null ? MessageConvert.SerializeObject(model.list_json_chitiethoadon) : null);
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result) + msgError);
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Update(HoaDonModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_hoa_don_update",
                    "@MaHoaDon", model.MaHoaDon,
                    "@TenKH", model.TenKH,
                    "@Diachi", model.Diachi,
                    "@GioiTinh",model.GioiTinh,
                    "@TrangThai", model.TrangThai,
                    "@list_json_chitiethoadon", model.list_json_chitiethoadon != null ? MessageConvert.SerializeObject(model.list_json_chitiethoadon) : null);
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result + msgError));
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Delete(int id)
        {
            string msgError = "";
            bool kq; // Khởi tạo mặc định là false
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedure(out msgError, "sp_hoadon_delete",
                     "@MaHoaDon", id);
                // Kiểm tra kết quả trả về từ hàm ExecuteScalarSProcedureWithTransaction
                if (Convert.ToInt32(result) > 0)
                {
                    kq = true; // Xóa thành công, đặt kq thành true
                }
                else
                {
                    kq = false;
                }
                return kq;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public List<ThongKeKhachModel> Search(int pageIndex, int pageSize,out long total,string ten_khach, DateTime? fr_NgayTao,DateTime? to_NgayTao) 
        {
            string msgError = "";
            total = 0;
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_thong_ke_khach",
                    "@page_index", pageIndex,
                    "@page_size", pageSize,
                    "@ten_khach", ten_khach,
                    "@fr_NgayTao", fr_NgayTao,
                    "@to_NgayTao", to_NgayTao
                    );
                if(!string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(msgError);
                }
                if (dt.Rows.Count > 0) total = (long)dt.Rows[0]["RecordCount"];
                { 
                return dt.ConvertTo<ThongKeKhachModel>().ToList();
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
