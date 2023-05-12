using BLL;
using Microsoft.EntityFrameworkCore;
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
using System.Windows.Shapes;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for Invoice.xaml
    /// </summary>
    public partial class Invoice : Window
    {
        Recipt Recipt;
        Context context =new Context();
        public Invoice(Recipt recipt)
        {
            
            InitializeComponent();
            Recipt = recipt;
        }
        public void fillOrdersDataGridWithOrders()
        {
            
            var orders =context.Orders.Include("Product").Include("Customer").Include("recipt").Where(O => O.recipt.ID == Recipt.ID).ToList();
            
            if (orders != null)
            {
                ordersdetailDataGrid.ItemsSource = orders.Select(O => new { Product = O.Product.Title, Price = O.Product.Price, Quantity = O.Quantity, Total = O.SubTotal }).ToList(); 
                CustomerNameLabel.Content = orders[0].Customer.Name;
                CustomerPhoneLablel.Content = orders[0].Customer.Phone.ToString();
                CustomerAddressLabel.Content = orders[0].Customer.Address.ToString();


                InvoicDateLabel.Content = Recipt.date;
                InvoiceNumLablel.Content = Recipt.ID;
                SubTotalLabel.Content = Recipt.totalprice;
                taxLabel.Content = "20%";
                double total =((20.0 / 100.0) * Recipt.totalprice) + Recipt.totalprice;
                totalLabel.Content = total;
            }
          

           

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
           fillOrdersDataGridWithOrders();

        }
    }
}
