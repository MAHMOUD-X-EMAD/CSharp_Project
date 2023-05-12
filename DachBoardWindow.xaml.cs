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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for DachBoardWindow.xaml
    /// </summary>
    public partial class DachBoardWindow : UserControl
    {
        public DachBoardWindow()
        {
            InitializeComponent();
            context = new Context();
        }
        public Context context;
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            var purchaseAmount = context.SupplierBills.Sum(s=>s.BillTotalPrice);
            var Totalsale = context.recipts.Sum(r => r.totalprice);
            int NumberOfOrder = context.Orders.Count();
            double totalCost = context.Orders.Sum(o => o.SubTotal);
            NumberOfOrders.Text = NumberOfOrder.ToString();
            PurchaseAmount.Text = purchaseAmount.ToString();
            ProfitSale.Text = (Totalsale - totalCost).ToString();

           
            CustomerOrder();
            ProductPuchrses();
            GetAllUserCommands();
            fIllComboBoxWithUsers();
            setInformation();
        }

        private void setInformation()
        {
            if (context.SupplierBills.Count() > 0)
            {
                var dateBill = context.SupplierBills.OrderBy(s => s.Date)
                    .Last().Date;
                DateLastBill.Text = dateBill.ToString();
            }
            if (context.recipts.Count() > 0)
            {
                var dateReciept = context.recipts
                    .OrderBy(r => r.date).LastOrDefault().date;
                DateLastOrder.Text = dateReciept.ToString();
            }
            NumberOfCustomer.Text = context.Customers.ToList().Count.ToString();
            NumberOfProduct.Text = context.Products.Where(P=>P.Exist==1).ToList().Count.ToString();




        }
        private void fIllComboBoxWithUsers()
        {
            var items = context.Users.Select(U => new {Id=U.ID,Name= U.UserName }).ToList();
            FilterCB.ItemsSource = items;
            FilterCB.SelectedValuePath = "Id";
            FilterCB.DisplayMemberPath= "Name";
        }
        private void GetAllUserCommands()
        {
            Users_commands.ItemsSource = context.Commands.Include("User").Select(C => new { User_Name = C.User.Name, Message = C.Msg, Date = C.CommandDate }).ToList();
            
        }
        private void CustomerOrder()
        {
            CustomerDetailsDataGrid.ItemsSource  =  context.Customers
              .OrderByDescending(c => c.Order.Count)
              .Select(c => new { Name = c.Name, OrderCount = c.Order.Count })
              .ToList();
            
        }
        private void ProductPuchrses()
        {
            ProductDetailsDataGrid.ItemsSource = context.Products
               .OrderByDescending(P => P.Orders.Count)
               .Select(P => new { Title = P.Title,  OrderCount = P.Orders.Count })
               .ToList();
        }

        private void FilterCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int user_id = (int)FilterCB.SelectedValue;
            Users_commands.ItemsSource  = context.Commands.Include("User").Where(C => C.UserID == user_id).Select(C => new { User_Name = C.User.Name, Message = C.Msg, Date = C.CommandDate } ).ToList();

           

        }

        private void AllCommandBtn_Click(object sender, RoutedEventArgs e)
        {
            GetAllUserCommands();
        }
      
    }
}
