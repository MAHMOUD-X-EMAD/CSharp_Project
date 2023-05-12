using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Intrinsics.X86;
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
    /// Interaction logic for HomeWindow.xaml
    /// </summary>
    public partial class HomeWindow : Window
    {
        User User;
        Context context=new Context();
        
            

        public HomeWindow(User user)
        {
            
            InitializeComponent();
            User = user;
            showUserInfo(User);
            DachBoardWindow dachBoard = new DachBoardWindow();
            contentWindow.Children.Add(dachBoard);
        }

        //forTest
        public HomeWindow()
        {
            InitializeComponent();
            DachBoardWindow dachBoard = new DachBoardWindow();
            
             User= context.Users.FirstOrDefault(U => U.ID == 3);
            showUserInfo(User);
            contentWindow.Children.Add(dachBoard);

        }



        public void showUserInfo(User user)
        {
            try
            {
                this.Show();

                Uri Img_url = new Uri(user.Image, UriKind.RelativeOrAbsolute);
                User_Photo.ImageSource = new BitmapImage(Img_url);
                UserNameTB.Text = user.Name;

            }
            catch
            {
              
                UserNameTB.Text = user.Name;
            }


        }

        private void DachBoardBtn_Selected(object sender, RoutedEventArgs e)
        {
          
            contentWindow.Children.Clear();
            DachBoardWindow dachBoard = new DachBoardWindow();
            contentWindow.Children.Add(dachBoard);

        }

       
        private void SupplierBtn_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear(); 
            SuppliersWindow suppliersWindow=new SuppliersWindow(User);
            contentWindow.Children.Add(suppliersWindow);


        }

        private void ProductBtn_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            ProductsWindow productsWindow = new ProductsWindow(User);
            contentWindow.Children.Add(productsWindow);
        }

        private void CategoryBtn_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            CategoryWindow categoryWindow = new CategoryWindow(User);
            contentWindow.Children.Add(categoryWindow);
        }


        private void Customer_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            CustomersWindow customersWindow = new CustomersWindow(User);
            contentWindow.Children.Add(customersWindow);
        }

       

        private void UsersBtn_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            samePage confirmPass=new samePage();
            confirmPass.ConfirmedSuccess += ConfirmPass_ConfirmedSuccess;
            confirmPass.ShowDialog();
       



        }

        private void ConfirmPass_ConfirmedSuccess(bool obj)
        {
            contentWindow.Children.Clear();
            UserWindow userWindow = new UserWindow();
            contentWindow.Children.Add(userWindow);
        }

        private void LogOutBtn_Selected(object sender, RoutedEventArgs e)
        {
            var mv = new LOGIN();
            mv.Show();
            this.Close();
        }

        private void OrdersBtn_Selected(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            OrderWindow orderWindow = new OrderWindow(User);
            contentWindow.Children.Add(orderWindow);
        }

       

        private void InvoiceBtn_Selected_1(object sender, RoutedEventArgs e)
        {
            contentWindow.Children.Clear();
            ManageInvoicesWindow manageInvoicesWindow = new ManageInvoicesWindow();
            contentWindow.Children.Add(manageInvoicesWindow);

        }
    }
}
