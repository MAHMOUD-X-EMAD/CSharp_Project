using inventroy_system;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Product
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int supplierId { get; set; }
        public string Image { get; set; }
        public int CategoryId { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public int Exist { get; set; }
        public virtual Supplier supplier { get; set; }
        public virtual Category Category { get; set; }
        public virtual List<Order> Orders { get; set; }
        public List<SupplierBillProduct> SupplierBills { get; set; }






    }
}
