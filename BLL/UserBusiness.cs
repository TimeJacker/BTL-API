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
        public UserModel Login(string username, string password)
        {
            var user = _res.Login(username, password);
            if (user == null)
                return null;
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(secret);              //create key
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name, user.TenTaiKhoan.ToString()),
                    new Claim(ClaimTypes.Email, user.Email)
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.Aes128CbcHmacSha256)  // create token by encode key with data user
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            user.token = tokenHandler.WriteToken(token);
            return user;
        }

    }
}
