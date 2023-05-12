using BLL;
using inventroy_system;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    //public   struct Address
    //{
    //    public static string city;
    //    public string country;
    //    public string street;

    //}
    public class Customer:Person

    {
        //becouse it hide the proparty Id in base class
        //public static int ID;
     
        public string Address { get; set; }
        public int Exist { get; set; }
        public virtual List<Order> Order { get; set; }
        public virtual  List<Recipt> Recipts { get; set; }



    }
}
