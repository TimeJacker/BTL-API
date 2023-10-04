﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace DAL
{
    public partial interface IHoaDonRepository
    {
        HoaDonModel GetDataByID(int id);
        bool Create(HoaDonModel model);
        bool Update(HoaDonModel model);
        public List<ThongKeKhachModel> Search(int pageIndex, int pageSize, out long total, string ten_khach, DateTime? fr_NgayTao, DateTime? to_NgayTao);
    }
}
