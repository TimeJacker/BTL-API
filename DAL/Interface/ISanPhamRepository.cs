using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace DAL
{
    public partial interface ISanPhamRepository
    {
        SanPhamModel GetDataByID(int id);
        bool Create(SanPhamModel model);
        bool Update(SanPhamModel model);
        bool Delete(int id);
        public List<SanPhamModel> Search(int pageIndex, int pageSize, out long total, string ten_sp);
    }
}
