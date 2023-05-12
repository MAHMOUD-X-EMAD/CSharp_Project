using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inventroy_system
{
    public class Command
    {
        public int Id { get; set; }
        public string Msg { get; set; }

        public DateTime CommandDate { get; set; }

        [ForeignKey("User")]
        public int UserID { get; set; }
        public virtual User User { get; set; }
    }
}
