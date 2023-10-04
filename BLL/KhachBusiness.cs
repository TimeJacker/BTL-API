using BLL;
using DAL;
using Models;

namespace BLL
{
    public class KhachBusiness : IKhachBusiness
    {
        private IKhachRepository _res;
        public KhachBusiness(IKhachRepository res)
        {
            _res = res;
        }
        public async Task<List<KhachModel>> GetAll()
        {
            return await _res.GetAll();
        }
        public async Task<KhachModel> GetById(int id)
        {
            return await _res.GetById(id);
        }
        public bool Create(KhachModel model)
        {
            return _res.Create(model);
        }
        public bool Update(KhachModel model)
        {
            return _res.Update(model);
        }
        public List<KhachModel> Search(int pageIndex, int pageSize, out long total, string ten_khach, string dia_chi)
        {
            return _res.Search(pageIndex, pageSize, out total, ten_khach, dia_chi);
        }
    }
}