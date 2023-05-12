using BLL;
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
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for CustomersWindow.xaml
    /// </summary>
    public partial class CustomersWindow : UserControl
    {
        Context context;
        User User;
        public CustomersWindow(User user)
        {
            InitializeComponent();
            context=new Context();

            User = user;
            Update_DataGrid();
            fillComboBox();

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
        private void fillComboBox()
        {
            FilterCB.ItemsSource = context.Customers.Select(customer => customer.Address).Distinct().ToList();
        }

        private void AddCustomerBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                bool flag = false;


                var Customers = context.Customers.Where(c => c.Exist != 0).Select(u => new { u.Name, u.Phone }).ToList();

                foreach (var Customer in Customers)
                {
                    if (Customer.Name == CustomerName.Text && Customer.Phone == CustomerPhone.Text)
                    {

                        flag = true;
                        break;

                    }

                }

                if (flag)
                {
                    MessageBox.Show("The customer already exists");
                }

                else
                {
                    Customer customer = new Customer();
                    context.Customers.Add(SetValues_To_Obj(customer));
                    context.SaveChanges();
                    Update_DataGrid();
                    Reset_TextBoxs();
                    MessageBox.Show("Customer Added");
                    newCommand(User.Name + " Add New Customer:  " + customer.ID);
                }

            }
            catch {
                MessageBox.Show("Fill All Date");
            
            }   

        }

        private void EditCustomerBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int Id = int.Parse(CustomerId.Text);
                Customer customer = context.Customers.Where(c => c.ID == Id).FirstOrDefault();
                SetValues_To_Obj(customer);
                context.SaveChanges();
                Reset_TextBoxs();
                Update_DataGrid();

                MessageBox.Show("Customer Updated");
                newCommand(User.Name + " Update Customer:  " + customer.ID);
            }
            catch {
                MessageBox.Show("Fill all Data ");
            }

        }

        private void DeleteCustomerBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int Id = int.Parse(CustomerId.Text);
                Customer customer = context.Customers.Where(c => c.ID == Id).FirstOrDefault();

                newCommand(User.Name + " Delete Customer:  " + customer.ID);

                customer.Exist = 0;
                context.SaveChanges();
                Update_DataGrid();
                Reset_TextBoxs();
                MessageBox.Show("Customer Deleted");
            }
            catch {
                MessageBox.Show("Select Customer First");
            
            }


        }

        private void CustomerDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectItem = CustomerDataGrid.SelectedItem;
            if(selectItem != null) 
            {
                var itemsInRow= selectItem.GetType().GetProperties();
                CustomerId.Text= itemsInRow[0].GetValue(selectItem).ToString();
                CustomerName.Text= itemsInRow[1].GetValue(selectItem).ToString();
                CustomerAge.Text= itemsInRow[2].GetValue(selectItem).ToString();
                CustomerAdderss.Text= itemsInRow[3].GetValue(selectItem).ToString();
                CustomerPhone.Text = itemsInRow[4].GetValue(selectItem).ToString();
                CustomerSex.Text = itemsInRow[5].GetValue(selectItem).ToString();

                int id = int.Parse(CustomerId.Text);
                int NumbersOfOrders = context.Orders.Where(c => c.CustomerId == id).Count();
                NumberOfOrders.Text = NumbersOfOrders.ToString();

                List<double> AllOrdersTotal = context.Orders.Where(c => c.CustomerId == id).Select(c => c.SubTotal).ToList();

                int Amount = 0;
                foreach (int orderTotal in AllOrdersTotal)
                {
                    Amount += orderTotal;
                }
                OrderAmount.Text = Amount.ToString();

                var LastOrderDate = context.Orders.Where(order => order.CustomerId == id);//.Select(o => o.orderDate);
                if (LastOrderDate.Count()>0)
                {
                    DateTime Date = LastOrderDate.OrderBy(d => d.orderDate).Select(o => o.orderDate).Last();
                    LastDate.Text = Date.ToString();
                }
                else
                {
                    LastDate.Text = "DD/MM/YYYY";
                }
  
                   
        
            }

        }
        private void Reset_TextBoxs()
        {

            CustomerId.Text = "";
            CustomerName.Text = "";
            CustomerAge.Text = "";
            CustomerAdderss.Text = "";
            CustomerPhone.Text = "";
            CustomerSex.Text = "";
        }

        private Customer SetValues_To_Obj( Customer customer)
        {
            customer.Name = CustomerName.Text;
            customer.Age = int.Parse(CustomerAge.Text);
            customer.Address = CustomerAdderss.Text;
            customer.Phone = CustomerPhone.Text;
            customer.Sex = CustomerSex.Text;
            customer.Exist = 1;
            return customer;    
        }

        private void Update_DataGrid()
        {
            CustomerDataGrid.ItemsSource = context.Customers.Where(c => c.Exist != 0).Select(c => new { ID = c.ID, Name = c.Name, Age = c.Age, Adderss = c.Address, Phone = c.Phone , Sex=c.Sex}).ToList();
        }

        private void FilterCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            string city = FilterCB.SelectedItem.ToString();
            var cities = context.Customers.Where(customer => customer.Address == city).Select(c => new { ID = c.ID, Name = c.Name, Age = c.Age, Adderss = c.Address, Phone = c.Phone, Sex = c.Sex }).ToList();
            CustomerDataGrid.ItemsSource = cities;
        }
    }
}

 
