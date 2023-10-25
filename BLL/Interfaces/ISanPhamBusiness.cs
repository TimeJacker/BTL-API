using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public partial interface ISanPhamBusiness
    {
        SanPhamModel GetDataByID(int id);
        bool Create(SanPhamModel model);
        bool Update(SanPhamModel model);
        bool Delete(int id);
        public List<SanPhamModel> Search(int pageIndex, int pageSize, out long total, string ten_sp);
    }
}
