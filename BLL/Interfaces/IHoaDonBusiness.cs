using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BLL
{
    public partial interface IHoaDonBusiness
    {
        HoaDonModel GetDataByID(int ID);    
        bool Create(HoaDonModel model);
        bool Update(HoaDonModel model);
        bool Delete(int id);
        public List<ThongKeKhachModel> Search(int pageIndex, int pageSize, out long total,string ten_khach, DateTime? fr_NgayTao,DateTime? to_NgayTao );

    }
}
