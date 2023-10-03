using BLL;
using DAL;
using Models;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Sockets;
using System.Security.Claims;
using System.Text;


namespace BLL
{
    public class UserBusiness:IUserBusiness
    {
        private IUserRepository _res;
        private string secret;
        public UserBusiness(IUserRepository res, IConfiguration configuration)
        {
            _res= res;
            secret = configuration["AppSettings:Secret"];
        }
        //public UserModel Login(string username, string password)
        //{
        //    var user = _res.Login(username, password);
        //    if(user == null)
        //    {
        //        return null;
        //    }
        //    var tokenHandler = new JwtSecurityTokenHandler();
        //    var key = Encoding.ASCII.GetBytes(secret);
        //    var tokenDescriptor = new SecurityTokenDescriptor
        //    {
        //        Subject = new ClaimsIdentity(new Claim[] {
        //           new Claim(ClaimTypes.Name, user.TenTaiKhoan.ToString()),
        //           new Claim(ClaimTypes.Email, user.Email)
        //        }),
        //        Expires = DateTime.UtcNow.AddDays(7),
        //        SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.Aes128CbcHmacSha256)
        //    };
        //    var token = tokenHandler.CreateToken(tokenDescriptor);
        //    user.token = tokenHandler.WriteToken(token);
        //    return user;    
        //}
        public UserModel Login(string username, string password)
        {
            var user = _res.Login(username, password);

            if (user == null)
            {
                // Trả về một đối tượng không hợp lệ hoặc mã lỗi đăng nhập không thành công
                return new UserModel { TenTaiKhoan = "InvalidUser", Email = "invalid@example.com", token = null };
            }

            var claims = new List<Claim>
        {
            new Claim(ClaimTypes.NameIdentifier, user.TenTaiKhoan),
            new Claim(ClaimTypes.Email, user.Email)
            // Thêm các claim khác nếu cần thiết
        };

            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(secret);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };

            var token = tokenHandler.CreateToken(tokenDescriptor);
            user.token = tokenHandler.WriteToken(token);

            return user;
        }

    }
}
