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
using System.Windows.Shapes;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for LOGIN.xaml
    /// </summary>
    public partial class LOGIN : Window
    {
        public event Action<User> LoginSuccess;
        User loginUser;
        public LOGIN()
        {
            InitializeComponent();
            loginUser= new User();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        //private void Button_Click(object sender, RoutedEventArgs e)
        //{
        //    if (IsvalidUser(txtUser.Text, passwordBox.Password))

        //    {

        //        HomeWindow main = new HomeWindow();

        //        main.Show();
        //        this.Close();
        //    }

        //    else
        //    {
        //        MessageBox.Show("Wrong Password Plz Retry Agin!");
        //    }
        //}

        //private bool IsvalidUser(string userName, string password)

        //{
        //    Context context = new Context();

        //    var user = context.Users.FirstOrDefault(x => x.UserName == userName && x.Password == password);


        //    if (user != null)

        //    {

        //        return true;

        //    }
        //    else

        //    {

        //        return false;

        //    }

        //}

        //private void Button_Click_1(object sender, RoutedEventArgs e)
        //{
        //    txtUser.Text = null;
        //    passwordBox.Password = null;
        //}

        private void ShowPassword_Checked(object sender, RoutedEventArgs e)
        {
            passwordTxtBox.Text = passwordBox.Password;
            passwordBox.Visibility = Visibility.Collapsed;
            passwordTxtBox.Visibility = Visibility.Visible;
        }

        private void ShowPassword_Unchecked(object sender, RoutedEventArgs e)
        {
            passwordBox.Password = passwordTxtBox.Text;
            passwordTxtBox.Visibility = Visibility.Collapsed;
            passwordBox.Visibility = Visibility.Visible;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (IsvalidUser(txtUser.Text, passwordBox.Password))

            {

                HomeWindow homeWindow = new HomeWindow(loginUser);

                homeWindow.Show();
                this.Close();

            }

            else
            {
                MessageBox.Show("Wrong Password Plz Retry Agin!");
            }
        }

        private bool IsvalidUser(string userName, string password)

        {
            Context context = new Context();

            var user = context.Users.FirstOrDefault(x => x.UserName == userName && x.Password == password);


            if (user != null)

            {
                loginUser = user;
                return true;
                
            }
            else

            {

                return false;

            }

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            txtUser.Text = null;
            passwordBox.Password = null;
        }
    }
}
