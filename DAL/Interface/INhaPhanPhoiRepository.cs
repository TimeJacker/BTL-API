using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public partial interface INhaPhanPhoiRepository
    {
        NhaPhanPhoiModel GetDataByID(int id);
        bool Create(NhaPhanPhoiModel model);
        bool Update(NhaPhanPhoiModel model);
        bool Delete(int id);
        public List<NhaPhanPhoiModel> Search(int pageIndex, int pageSize, out long total, string ten_nhapp);
    }
}
