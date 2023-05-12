using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    //[Flags]
    //public enum Sex
    //{
    //    Male,
    //    Female
    //}
    public class Person
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }

        public string Sex { get; set; }
        public string Phone { get; set; }




    }
}
