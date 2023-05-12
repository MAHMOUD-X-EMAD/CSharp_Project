using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inventroy_system
{
    public class Recipt
    {
        [Key]
        public int ID { get; set; }
        public DateTime date { get; set; }
        public double totalprice { get; set; }

        [ForeignKey("Customer")]
        public int CustomerId { get; set; }

        public virtual Customer Customer{ get; set; }

       public virtual List<Order> Orders { get; set; }
    }
}
