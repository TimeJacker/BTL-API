using BLL;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Models;

namespace Admin.Controllers
{
    //[Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class NhaPhanPhoiController : ControllerBase
    {
        private INhaPhanPhoiBusiness _nhaphanphoiBusiness;
        private string _path;
        private IWebHostEnvironment _env;
        public NhaPhanPhoiController(INhaPhanPhoiBusiness sanphamBusiness, IConfiguration configuration, IWebHostEnvironment env)
        {
            _nhaphanphoiBusiness = sanphamBusiness;
            _path = configuration["AppSettings:PATH"];
            _env = env;
        }
        [NonAction]
        public string CreatePathFile(string RelativePathFileName)
        {
            try
            {
                string serverRootPathFolder = _path;
                string fullPathFile = $@"{serverRootPathFolder}\{RelativePathFileName}";
                string fullPathFolder = System.IO.Path.GetDirectoryName(fullPathFile);
                if (!Directory.Exists(fullPathFolder))
                    Directory.CreateDirectory(fullPathFolder);
                return fullPathFile;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        [Route("get-by-id/{id}")]
        [HttpGet]
        public NhaPhanPhoiModel GetDatabyID(int id)
        {
            return _nhaphanphoiBusiness.GetDataByID(id);
        }
        [Route("create-sanpham")]
        [HttpPost]
        public NhaPhanPhoiModel CreateItem([FromBody] NhaPhanPhoiModel model)
        {
            _nhaphanphoiBusiness.Create(model);
            return model;
        }
        [Route("update-sanpham")]
        [HttpPost]
        public NhaPhanPhoiModel UpdateItem([FromBody] NhaPhanPhoiModel model)
        {
            _nhaphanphoiBusiness.Update(model);
            return model;
        }
        [Route("delete-sanpham")]
        [HttpDelete]
        public IActionResult DeleteItem(int id)
        {
            _nhaphanphoiBusiness.Delete(id);
            return Ok(id);
        }
        [Route("search")]
        [HttpPost]
        public IActionResult Search([FromBody] Dictionary<string, object> formData)
        {
            try
            {
                var pageSize = int.Parse(formData["pageSize"].ToString());
                var pageIndex = int.Parse(formData["pageIndex"].ToString());
                string ten_nhapp = "";
                if (formData.Keys.Contains("ten_nhapp") && !string.IsNullOrEmpty(Convert.ToString(formData["ten_nhapp"]))) { ten_nhapp = Convert.ToString(formData["ten_nhapp"]); }
                long total = 0;
                var data = _nhaphanphoiBusiness.Search(pageIndex, pageSize, out total, ten_nhapp);
                return Ok(
                    new
                    {
                        TotalItems = total,
                        Data = data,
                        PageIndex = pageIndex,
                        PageSize = pageSize
                    }
                    );
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
