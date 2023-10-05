﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Models;

namespace BLL
{
    public class HoaDonBusiness:IHoaDonBusiness
    {
        private IHoaDonRepository _res;
        public HoaDonBusiness(IHoaDonRepository res)
        {
            _res = res;
        }
        public HoaDonModel GetDataByID(int id)
        {
            return _res.GetDataByID(id);
        }
        public bool Create(HoaDonModel model)
        {
            return _res.Create(model);
        }
        public bool Update(HoaDonModel model)
        {
            return _res.Update(model);
        }
        public List<ThongKeKhachModel> Search(int pageIndex, int pageSize, out long total,string ten_khach,DateTime? fr_NgayTao, DateTime? to_NgayTao)
        {
            return _res.Search(pageIndex, pageSize,out total, ten_khach, fr_NgayTao, to_NgayTao);
        }

    }
}