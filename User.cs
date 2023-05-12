using inventroy_system;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class User:Person
    {
      

        public string UserName { get; set; }

        public string Image { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public int Exist { get; set; }
        public List<Command> Commands { get; set; }
        /*public User(string name, int age, Sex sex, string phone, string password, string email,string userName):base(++ID,name,age,sex,phone)
        {
            UserName = userName;
            Password = password;
            Email= email;
        }*/


    }
}
