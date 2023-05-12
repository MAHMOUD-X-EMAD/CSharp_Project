using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using BLL;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for ViewOrdersWindow.xaml
    /// </summary>
    public partial class ViewOrdersWindow : Window
    {

        Context context;
        public ViewOrdersWindow()
        {
            
            InitializeComponent();
            context = new Context();
        }

        private void ordersDataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void chooseCategoryCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int CustId = (int)chooseCustomerCB.SelectedValue;
            ordersDataGrid.ItemsSource= null;
            var orders = context.Orders.Where(O => O.Customer.ID == CustId)
            .Select(O => new { ID = O.OrderId, Product = O.Product.Title, RecieptID = O.RecieptId, Quantity = O.Quantity, UPrice = O.Product.Price, TotalPrice = O.SubTotal }).ToList();
            ordersDataGrid.ItemsSource = orders;

        }

        private void FillCustomerComboBoxWithCustomers()
        {
            chooseCustomerCB.ItemsSource = context.Customers.Select(C => new { ID = C.ID, Name = C.Name }).ToList();
            chooseCustomerCB.SelectedValuePath = "ID";
            chooseCustomerCB.DisplayMemberPath = "Name";
        }

        private void FillOrderDataGridWithOrders()
        {
            ordersDataGrid.ItemsSource = context.Orders.Select(O => new { ID = O.OrderId, Product = O.Product.Title, RecieptID = O.RecieptId, Quantity = O.Quantity, UPrice = O.Product.Price, TotalPrice = O.SubTotal }).ToList();
        }




        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            FillCustomerComboBoxWithCustomers();
            FillOrderDataGridWithOrders();

        }

        private void AllordersBtn_Click(object sender, RoutedEventArgs e)
        {
            FillOrderDataGridWithOrders();

        }
    }
}
