using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Bill
    {
        public int BillId { get; set; }


        public string ProductTitle { get; set; }
        public int Quantity { get; set; }
        public int ProductId { get; set; }
        public Decimal Price { get; set; }
        public Decimal TotalPrice { get; set; }
        public string Image { get; set; }
        
        public string supplier { get; set; }

        public string category { get; set; }

        public int InvoiceTotalPrice { get; set; }

        
    }
}
