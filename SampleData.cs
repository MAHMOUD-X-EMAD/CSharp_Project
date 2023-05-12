using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Windows.Input;
using BLL;

using Microsoft.Win32.SafeHandles;

namespace BLL
{
    public static class SampleData
    {
        public static List<Category> Categories;//= new List<Category>();
        public static List<Product> Products;// = new List<Product>();
        public static List<Order> Orders;//= new List<Order>();
        public static List<Customer> Customers;//  = new List<Customer>();
        public static List<User> Users;//= new List<User>();
        public static List<Supplier> Suppliers;// = new List<Supplier>();
        static SampleData()
        {

            Categories = new List<Category>();
            Products = new List<Product>();
            Orders = new List<Order>();
            Customers = new List<Customer>();
            Users = new List<User>();
            Suppliers = new List<Supplier>();

            //fill the list of  Categories
            Categories.Add(new Category { Id = 100, Title = "Mobile" });
            Categories.Add(new Category { Id = 101, Title = "Laptop" });
            Categories.Add(new Category { Id = 102, Title = "Electroics" });
            Categories.Add(new Category { Id = 103, Title = "Music instrument" });
            Categories.Add(new Category { Id = 104, Title = "Desktop" });
            Categories.Add(new Category { Id = 105, Title = "Body Care" });

            //fill the list of prodect

            Suppliers.Add(new Supplier { City = "South Korea",  ID = 10, Name = "L.G", Phone = "0926262718" });
            Suppliers.Add(new Supplier { City = "South Korea", ID = 11, Name = "Huaix", Phone = "01271911645" });
            Suppliers.Add(new Supplier { City = "China", ID = 12, Name = "Lenovo", Phone = "123-345-098" });
            Suppliers.Add(new Supplier { City = "China", ID = 14, Name = "TCL", Phone = "123-345-098" });
            Suppliers.Add(new Supplier { City = "China",ID = 15, Name = "Vivo", Phone = "123-345-098" });
            Suppliers.Add(new Supplier { City = "China",ID = 16, Name = "Huawel", Phone = "8893 -3737-3737" });
            Suppliers.Add(new Supplier { City = "China",ID = 17, Name = "Oppo", Phone = "8383-636-38" });
            Suppliers.Add(new Supplier { City = "Japan",ID = 18, Name = "NVIDA", Phone = "23-44-56-76" });
            Suppliers.Add(new Supplier { City = "Japan",ID = 19, Name = "Intel", Phone = "524-383-45" });
            Suppliers.Add(new Supplier { City = "Japan",ID = 20, Name = "CASIO", Phone = "73727-2929-9090" });
            Suppliers.Add(new Supplier { City = "Japan",ID = 21, Name = "SONY", Phone = "(2662)-828-222" });
            Suppliers.Add(new Supplier { City = "Newyork",ID = 22, Name = "SGI", Phone = "(2662)-828-222" });
            Suppliers.Add(new Supplier { City = "Newyork" ,ID = 23, Name = "DELL", Phone = "(2662)-828-222" });
            Suppliers.Add(new Supplier { City = "Newyork",ID = 24, Name = "BIM", Phone = "(2662)-828-222" });
            Suppliers.Add(new Supplier { City = "Newyork", ID = 25, Name = "ZENITH", Phone = "(2662)-828-222" });
            Suppliers.Add(new Supplier { City = "Newyork",ID = 26, Name = "Appal", Phone = "+092874737662" });

            Products.Add(new Product { Id = 1, Title = "Iphone 14 pro max", Price = 70000,Quantity=2, Category = Categories[0], supplier = Suppliers[13] });
            Products.Add(new Product { Id = 2, Title = "Iphone pro max", Price = 65000, Quantity = 2, Category = Categories[3], supplier = Suppliers[12] });
            Products.Add(new Product { Id = 3, Title = "Iphone 6s", Price = 2800, Quantity = 2, Category = Categories[1], supplier = Suppliers[1] });
            Products.Add(new Product { Id = 4, Title = "Iphone pro max", Price = 65000, Quantity = 2, Category = Categories[2], supplier = Suppliers[0] });
            Products.Add(new Product { Id = 5, Title = "Dell set prestions x74", Price = 2300, Quantity = 2, Category = Categories[5], supplier = Suppliers[5] });
            Products.Add(new Product { Id = 6, Title = "Lenovo 12xs", Price = 2300, Quantity = 2, Category = Categories[4], supplier = Suppliers[7] });

            //Fill The List Of  Orders
            Orders.Add(new Order { CustomerId = 1, OrderId = 1, ProductId = 1, Quantity = 1 });
            Orders.Add(new Order { CustomerId = 2, OrderId = 2, ProductId = 1, Quantity = 1 });
            Orders.Add(new Order { CustomerId = 2, OrderId = 3, ProductId = 1, Quantity = 1 });
            Orders.Add(new Order { CustomerId = 3, OrderId = 4, ProductId = 1, Quantity = 1 });
            //Fill The List Of  Customer
            Customers.Add(new Customer { Name = "Ali", Age = 20, Sex ="Male", Address = "Sohag", ID = 1, Phone = "01283839290" });
            Customers.Add(new Customer { Name = "Omer", Age = 20, Sex ="Male", Address = "Assuit", ID = 2, Phone = "01283839290" });
            Customers.Add(new Customer { Name = "Syed", Age = 20, Sex ="Male", Address = "Alex", ID = 3, Phone = "01283839290" });

            //Fill The List Of User
            Users.Add(new User { ID = 1, Name = "Tarek", Age = 23, Sex = "Male", UserName = "Tarek_2022",Password="1234_rt", Email = "Tarek232@gmail", Phone = "01038272789" });
            Users.Add(new User { ID = 2, Name = "Mohamed", Age = 23, Sex = "Male", UserName = "Mohamed_2022", Password = "1234_2", Email = "MohamedM5@gmail.com", Phone = "01067631594" });
            Users.Add(new User { ID = 3, Name = "Hamada", Age = 24, Sex = "Male", UserName = "Hamada_2022", Password = "1234_er", Email = "HamadaICPC@gmail.com", Phone = "01271921645" });

            //Fill The List Of Suppliers







        }
    }

}