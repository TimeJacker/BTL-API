using BLL;
using DAL;
using Models;

namespace BLL
{
    public class SanPhamBusiness : ISanPhamBusiness
    {
        private ISanPhamRepository _res;
        public SanPhamBusiness(ISanPhamRepository res)
        {
            _res = res;
        }
        public SanPhamModel GetDataByID(int id)
        {
            return _res.GetDataByID(id);
        }
        public bool Create(SanPhamModel model)
        {
            return _res.Create(model);
        }
        public bool Update(SanPhamModel model)
        {
            return _res.Update(model);
        }
        public bool Delete(int id)
        {
            return _res.Delete(id);
        }
        public List<SanPhamModel> Search(int pageIndex, int pageSize, out long total, string ten_sp)
        {
            return _res.Search( pageIndex,  pageSize,out total, ten_sp);
        }
    }
}