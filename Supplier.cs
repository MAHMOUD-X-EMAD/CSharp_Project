using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL

{
    public class Supplier
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public int Exist { get; set; }
        public virtual List<Product> Products { get; set; }

        


        

      


    }
}
