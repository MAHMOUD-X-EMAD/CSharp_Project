using BLL;
using inventroy_system;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Order
    {

        public int OrderId { get; set; }

        public int Quantity { get; set; }

        public double SubTotal { get; set; }

        public DateTime orderDate { get; set; }
        
        [ForeignKey("recipt")]
        public int  RecieptId { get; set; }

        public virtual Recipt recipt { get; set; }

        [ForeignKey("Customer")]
        public int CustomerId { get; set; }
        [ForeignKey("Product")]
        public int ProductId { get; set; }

        public string DeliveryAddress { get; set; }


       public virtual Product Product { get; set; }
       public virtual Customer Customer { get; set; }

       


    }




}
