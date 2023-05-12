using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Category
    {
        public int Id { get; set; }

        public string Title { get; set; }
        public int Exist { get; set; }
        public virtual List<Product> Products { get; set; }
    }
}
