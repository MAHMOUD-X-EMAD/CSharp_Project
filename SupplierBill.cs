using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inventroy_system
{
    public class SupplierBill
    {
        public int Id { get; set; }

        public DateTime Date { get; set; }

        public decimal BillTotalPrice { get; set; }

        public int Exist { get; set; }

        public virtual Supplier Supplier { get; set; }
        public virtual List<SupplierBillProduct> SupplierBills { get; set; }
    }
}
