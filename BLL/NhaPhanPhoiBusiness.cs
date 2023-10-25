using BLL;
using DAL;
using Models;

namespace BLL
{
    public class NhaPhanPhoiBusiness : INhaPhanPhoiBusiness
    {
        private INhaPhanPhoiRepository _res;
        public NhaPhanPhoiBusiness(INhaPhanPhoiRepository res)
        {
            _res = res;
        }
        public NhaPhanPhoiModel GetDataByID(int id)
        {
            return _res.GetDataByID(id);
        }
        public bool Create(NhaPhanPhoiModel model)
        {
            return _res.Create(model);
        }
        public bool Update(NhaPhanPhoiModel model)
        {
            return _res.Update(model);
        }
        public bool Delete(int id)
        {
            return _res.Delete(id);
        }
        public List<NhaPhanPhoiModel> Search(int pageIndex, int pageSize, out long total, string ten_sp)
        {
            return _res.Search(pageIndex, pageSize, out total, ten_sp);
        }
    }
}