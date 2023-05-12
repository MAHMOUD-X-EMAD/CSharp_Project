using inventroy_system;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace BLL
{
    public class Context : DbContext
    {
        public DbSet<Product> Products { get; set; }

        public DbSet<Category> Categories { get; set; }

        public DbSet<Customer> Customers { get; set; }

        public DbSet<User> Users { get; set; }


        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Recipt> recipts { get; set; }

        public DbSet<Command> Commands { get; set; }


        public DbSet<SupplierBill> SupplierBills { get; set; }

        public DbSet<SupplierBillProduct> SupplierBillProducts { get; set; }



        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=.\\sql19;Initial Catalog=InventroySystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=true;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        }
    }
}
