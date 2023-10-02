using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BLL
{
    public partial interface ISanPhamBusiness
    {
        SanPhamModel GetDataByID(int id);
        bool Create(SanPhamModel model);
        bool Update(SanPhamModel model);
        public List<SanPhamModel> Search(int id);
    }
}
