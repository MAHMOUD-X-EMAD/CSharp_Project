using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inventroy_system
{
    public class SupplierBillProduct
    {
        public int Id { get; set; }

        [ForeignKey("SupplierBill")]
        public int SupplierBillId { get; set; }

        [ForeignKey("Product")]
        public int ProductId { get; set; }
        public int ProductQuantity { get; set; }

        public virtual Product Product { get; set; }

        public virtual SupplierBill SupplierBill { get; set; }
    }
}
