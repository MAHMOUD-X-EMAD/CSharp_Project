using BLL;
using MaterialDesignThemes.Wpf;
using Microsoft.EntityFrameworkCore.ValueGeneration;
using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for OrderWindow.xaml
    /// </summary>
    /// 
    
    public class TemporaryProduct
    {
      public int Id { get; set; }
       public string Title { get; set; } 
      public decimal Price { get; set; }
      public string Image { get; set; }
      public int  Quantity { get; set; }
    }

    public partial class OrderWindow : UserControl
    {
        Context context;
        public List<Order> orders;
        int orderNum;

        bool ConfirmBtnClicked = false;

        User User;
        public OrderWindow(User user)
        {
          
            InitializeComponent();
            context = new Context();
            orders = new List<Order>();
            User=user;
            orderNum = 0;
            
            fillComboBox();

            FillCustomerDataGridWitCustomerss();
            FillProductDataGridWitProducts();
            addCategoriesToCombox();

        }
        private void newCommand(string Msg)
        {
            Command command = new Command();
            command.CommandDate = DateTime.Now;
            command.Msg = Msg;
            command.UserID = User.ID;

            context.Commands.Add(command);

            context.SaveChanges();

        }



        public void addCategoriesToCombox()
        {

            var items = context.Categories.Select(c => new { ID = c.Id, Title = c.Title }).ToList();
            chooseCategoryCB.ItemsSource = items;
            chooseCategoryCB.DisplayMemberPath = "Title";
            chooseCategoryCB.SelectedValuePath = "ID";


        }
        public void FillCustomerDataGridWitCustomerss()
        {

            customerDataGrid.ItemsSource = context.Customers.Select(C => new { ID = C.ID, Name = C.Name, Sex = C.Sex.ToString(), Phone = C.Phone }).ToList();



        }
        public void FillProductDataGridWitProducts()
        {
            ProductDataGrid.ItemsSource = context.Products.Select(P => new TemporaryProduct() { Id = P.Id, Title = P.Title, Price = P.Price, Image = P.Image, Quantity = P.Quantity }).ToList();

        }




        private void customerDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selected_customer = customerDataGrid.SelectedItem;

            var prop = selected_customer.GetType().GetProperties();
            CustomerIdTB.Text = prop[0].GetValue(selected_customer).ToString();
            CustomerNameTB.Text = prop[1].GetValue(selected_customer).ToString();



        }

        private void FillProductDataGridWithSpacificCategory()
        {
            int categoryID = (int)chooseCategoryCB.SelectedValue;
            ProductDataGrid.ItemsSource = context.Products.Where(p => p.Category.Id == categoryID).Select(P => new TemporaryProduct(){ Id = P.Id, Title = P.Title, Price = P.Price, Image = P.Image, Quantity = P.Quantity }).ToList();

        }
       
        private bool ValidOrder(int productQuantity,int requiredQuantity)
        {
            if (productQuantity < requiredQuantity)
            {
                return false;
            }
            return true;
        }
        private void FullOrderDataGridWithOrders()
        {
            ordersDataGrid.ItemsSource = orders.Select(O => new { Num = O.OrderId, Product = O.Product.Title,Quantity = O.Quantity, UPrice = O.Product.Price, TotalPrice = O.SubTotal });

        }

        private void updateProductQuantity(TemporaryProduct p,int NewQuantity)
        {
             Product product = context.Products.FirstOrDefault(P =>P.Id== p.Id);
             product.Quantity=NewQuantity;
            context.SaveChanges();
            if(chooseCategoryCB.SelectedItem!=null) {
                FillProductDataGridWithSpacificCategory();
            }
            else
            {
                FillProductDataGridWitProducts();
            }
        

        }

        private void fillComboBox()
        {
            FIlterCustomerByAddreesCB.ItemsSource = context.Customers.Select(customer => customer.Address).Distinct().ToList();
        }

        private void AddOrderBtn_Click(object sender, RoutedEventArgs e)
        {

            if (ProductDataGrid.SelectedItem != null)
            {
                TemporaryProduct product =(TemporaryProduct) ProductDataGrid.SelectedItem;
              
                

                int productid = product.Id;
                var customer = customerDataGrid.SelectedItem;
                int requiredQuantity;
                if (int.TryParse(ProductQuantity.Text, out requiredQuantity))
                {

                    Product p = context.Products.FirstOrDefault(P => P.Id == productid);
                    if(ValidOrder(p.Quantity, requiredQuantity))
                    {
                       
                        int Newquantity = p.Quantity - requiredQuantity;
                        updateProductQuantity(product, Newquantity);

                        Order newOrder = new Order() { OrderId=++orderNum, ProductId = p.Id, Product=p,Quantity = requiredQuantity,SubTotal= (int)(requiredQuantity *p.Price)};
                        orders.Add(newOrder);
                        FullOrderDataGridWithOrders();
                    }
                    else
                    {
                        MessageBox.Show("these Quantity not found in your inventory");
                    }
                   



                }
                else
                {
                    MessageBox.Show("please enter Valid Number");
                }
            }
            else
            {
                MessageBox.Show("select product to add new order");
            }

        }

        public void ConfirmOrders(Recipt recipt,Customer customer,List<Order> orders)
        {
           
            foreach(Order order in orders)
            {
                Order newOrder = new Order();
                newOrder.Quantity = order.Quantity;
                newOrder.SubTotal = order.SubTotal;
                newOrder.RecieptId= recipt.ID;
                newOrder.ProductId = order.ProductId;
                newOrder.Customer = customer;
                newOrder.DeliveryAddress= newOrder.Customer.Address;
                newOrder.orderDate = DateTime.Now;
                context.Orders.Add(newOrder);
                context.SaveChanges();
                newCommand(User.UserName + " Add new Recipet: " + recipt.ID);
            }
        }
        private void showReciept(Recipt recipt)
        {
            Invoice invoice = new Invoice(recipt);
            invoice.ShowDialog();
           
        }



        private void ConfirmOrdersBtn_Click(object sender, RoutedEventArgs e)
        {
            ConfirmBtnClicked = true;
            if (customerDataGrid.SelectedItem != null )
            {
                if (ordersDataGrid.ItemsSource != null) {
                    int customerId = int.Parse(CustomerIdTB.Text);
                    Customer c = context.Customers.FirstOrDefault(C => C.ID == customerId);
                    double totalPrice = 0;

                    orders.Select(O => totalPrice += O.SubTotal*1.2).ToList();


                    Recipt NewRecipt = new Recipt()
                    {
                        date = DateTime.Now,
                        totalprice = totalPrice,
                        CustomerId = customerId,
                        Customer = c,
                    };
                     

                    context.recipts.Add(NewRecipt);
                    context.SaveChanges();

                    ConfirmOrders(NewRecipt, c, orders);



                    MessageBox.Show("order confirmed");
                    orders.Clear();

                    ordersDataGrid.ItemsSource = null;

                    showReciept(NewRecipt);
                }
                else
                {
                    MessageBox.Show("please add orders to confirm");
                }
        


            }
            else
            {
                MessageBox.Show("select customer");
            }

        }

        private void ordersDataGrid_BeginningEdit(object sender, DataGridBeginningEditEventArgs e)
        {

        }

        private void viewOrdersBtn_Click(object sender, RoutedEventArgs e)
        {
            ViewOrdersWindow viewOrdersWindow = new ViewOrdersWindow();
            viewOrdersWindow.ShowDialog();
            
        }

        private void removeAllOrder()
        {
            foreach (Order item in orders)
            {
                int ProductId = item.Product.Id;
                int prefQuantity = item.Quantity;
                Product p = context.Products.FirstOrDefault(P => P.Id == ProductId);
                p.Quantity = prefQuantity + p.Quantity;

                context.SaveChanges();

                if (chooseCategoryCB.SelectedItem != null)
                {
                    FillProductDataGridWithSpacificCategory();
                }
                else
                {
                    FillProductDataGridWitProducts();
                }

            }
        }
        private void closed_Unloaded(object sender, RoutedEventArgs e)
        {
            if (!ConfirmBtnClicked)
            {
                removeAllOrder();
            }
        }

        private void RemoveOrdersBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ordersDataGrid.SelectedItem != null)
            {
                var properties = ordersDataGrid.SelectedItem.GetType().GetProperties();
                int id = int.Parse(properties[0].GetValue(ordersDataGrid.SelectedItem).ToString());


                Order order = orders.FirstOrDefault(O => O.OrderId == id);

                String ProducTitle = properties[1].GetValue(ordersDataGrid.SelectedItem).ToString();
                int prefQuantity = int.Parse(properties[2].GetValue(ordersDataGrid.SelectedItem).ToString());
                Product p = context.Products.FirstOrDefault(P => P.Title == ProducTitle);

                p.Quantity = prefQuantity + p.Quantity;
                context.SaveChanges();

                orders.Remove(order);

                FullOrderDataGridWithOrders();


                if (chooseCategoryCB.SelectedItem != null)
                {
                    FillProductDataGridWithSpacificCategory();
                }
                else
                {
                    FillProductDataGridWitProducts();
                }

            }
            else
            {
                MessageBox.Show("please Select Order First");
            }
        }

        private void ClearOrdersBtn_Click(object sender, RoutedEventArgs e)
        {
            removeAllOrder();
            orders.Clear();
            ordersDataGrid.ItemsSource = null;
        }



        private void chooseCategoryCB_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {
            ProductDataGrid.ItemsSource = null;
            FillProductDataGridWithSpacificCategory();

        }

        private void FIlterCustomerByAddreesCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
            string city = FIlterCustomerByAddreesCB.SelectedItem.ToString();
            var cities = context.Customers.Where(customer => customer.Address == city).Select(C => new { ID = C.ID, Name = C.Name, Sex = C.Sex.ToString(), Phone = C.Phone }).ToList();
            customerDataGrid.ItemsSource = cities;
        }

        private void AllCutomerBtn_Click(object sender, RoutedEventArgs e)
        {
            FillCustomerDataGridWitCustomerss();
        }
    }
}
