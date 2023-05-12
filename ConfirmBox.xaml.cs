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
    /// Interaction logic for samePage.xaml
    /// </summary>
    public partial class samePage : Window
    {
        public event Action<bool> ConfirmedSuccess;
        public samePage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(mainUserPassword.Password=="123")
            {
                if (ConfirmedSuccess != null)
                {
                    
                    ConfirmedSuccess(true);
                    this.Close();

                }
            }
            else
            {
                Mgs.Visibility = Visibility.Visible;
                Mgs.Text = "Wrong password";
            }
        }
    }
}
