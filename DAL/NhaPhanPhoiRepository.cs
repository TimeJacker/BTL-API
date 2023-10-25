using DAL;
using Models;

namespace DataAccessLayer
{
    public class NhaPhanPhoiRepository : INhaPhanPhoiRepository
    {
        private IDatabaseHelper _dbHelper;
        public NhaPhanPhoiRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public NhaPhanPhoiModel GetDataByID(int id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_sanpham_get_by_id",
                     "@id", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                return dt.ConvertTo<NhaPhanPhoiModel>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Create(NhaPhanPhoiModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_nhapp_create",
                "@MaNhaPhanPhoi", model.MaNhaPhanPhoi,
                "@TenNhaPhanPhoi", model.TenNhaPhanPhoi,
                "@DiaChi", model.DiaChi,
                "@SoDienThoai", model.SoDienThoai,
                "@Fax", model.Fax,
                "@MoTa", model.MoTa);
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
        public bool Update(NhaPhanPhoiModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "sp_nha_pp_update",
                "@MaNhaPhanPhoi", model.MaNhaPhanPhoi,
                "@TenNhaPhanPhoi", model.TenNhaPhanPhoi,
                "@DiaChi", model.DiaChi,
                "@SoDienThoai", model.SoDienThoai,
                "@Fax", model.Fax,
                "@MoTa", model.MoTa);
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
        public bool Delete(int id)
        {
            string msgError = "";
            bool kq; // Khởi tạo mặc định là false
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedure(out msgError, "sp_xoanhaphanphoi",
                     "@id", id);
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

        public List<NhaPhanPhoiModel> Search(int pageIndex, int pageSize, out long total, string ten_nhapp)
        {
            string msgError = "";
            total = 0;
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "sp_nhapp_search",
                    "@page_index", pageIndex,
                    "@page_size", pageSize,
                    "@ten_sp", ten_nhapp);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                if (dt.Rows.Count > 0) total = (long)dt.Rows[0]["RecordCount"];
                return dt.ConvertTo<NhaPhanPhoiModel>().ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
