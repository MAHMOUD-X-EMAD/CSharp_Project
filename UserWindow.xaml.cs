
using BLL;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Policy;
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
    /// Interaction logic for UserWindow.xaml
    /// </summary>
    public partial class UserWindow : UserControl
    {
        Context context = new Context();

        string path ="";
        public UserWindow()
        {
            InitializeComponent();

              Update_DataGrid();
              

        }
        //
        private void Add_User_Btn_Click(object sender, RoutedEventArgs e)
        {
            bool flag = false;
            List<string> ListofuserName = context.Users.Select(u => u.UserName).ToList();
            foreach (var item in ListofuserName)
            {
                if (UserNameTB.Text == item)
                {
                    flag = true;
                    break;
                }
            }

            if (flag)
            {
                MessageBox.Show("UserName Must Be Unque");
            }
            else
            {
                User user = new User();
                context.Users.Add(SetValues_To_Obj(user));
                context.SaveChanges();
                Update_DataGrid();
                Reset_TextBoxs();
                MessageBox.Show($"User  {user.Name} Added");

            }

        }


        //Delete User After Select It From DataGrid
        private void Delete_User_Btn_Click(object sender, RoutedEventArgs e)
        {
                string username = UserNameTB.Text;
                User user = context.Users.Where(u => u.UserName == username).FirstOrDefault();
                user.Exist = 0;
                context.SaveChanges();
                 Update_DataGrid();
                 Reset_TextBoxs();
                MessageBox.Show($"{user.Name} Deleted ");
        }
        //Get DataGeid Row whene Select It to Set Values to TextBoxs
        private void UsertDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectItem = UsertDataGrid.SelectedItem;
            if (selectItem != null)
            {
                var itemsInRow = selectItem.GetType().GetProperties();
                UserIdTB.Text = itemsInRow[0].GetValue(selectItem).ToString();
                Uname.Text = itemsInRow[1].GetValue(selectItem).ToString();
                userpassword.Text = itemsInRow[2].GetValue(selectItem).ToString();
                UserAge.Text = itemsInRow[3].GetValue(selectItem).ToString();
                UserEmail.Text = itemsInRow[4].GetValue(selectItem).ToString();
                UserPhone.Text = itemsInRow[5].GetValue(selectItem).ToString();
                userSex.Text = itemsInRow[6].GetValue(selectItem).ToString();
                UserNameTB.Text = itemsInRow[7].GetValue(selectItem).ToString();
                path = itemsInRow[8].GetValue(selectItem).ToString();
                try
                {
                    Uri Img_url = new Uri(path);
                    Image_.ImageSource= new BitmapImage(Img_url);
                }
                catch(Exception ex)
                {
                    Image_.ImageSource = null;
                }
                   
              
            }
        }

        //Update User Data
        private void Edit_User_Btn_Click(object sender, RoutedEventArgs e)
        {
                 int UserID = int.Parse(UserIdTB.Text);
                User user = context.Users.Where(u => u.ID == UserID).FirstOrDefault();
                SetValues_To_Obj(user);
                context.SaveChanges();
                Reset_TextBoxs();   
                Update_DataGrid(); 
                MessageBox.Show($"User With Name {user.Name} Data Updated !");
       
        }
        //Set New Values to New User
        private User SetValues_To_Obj(User user)
        {
            user.UserName = UserNameTB.Text;
            user.Password = userpassword.Text;
            user.Age = int.Parse(UserAge.Text);
            user.Email = UserEmail.Text;
            user.Phone = UserPhone.Text;
            user.Name = Uname.Text;
            user.Sex = userSex.Text;
            user.Image = path;
            user.Exist = 1;
            return user;

        }
        //Clear Textboxs
        private void Reset_TextBoxs()
        {
            UserIdTB.Text = "";
            UserNameTB.Text = "";
            UserPhone.Text = "";
            Uname.Text = "";
            UserAge.Text = "";
            UserEmail.Text = "";
            userpassword.Text = "";
            userSex.Text = "";
            Image_.ImageSource =null;
        }
        //Update DataGrid
        private void Update_DataGrid()
        {
            UsertDataGrid.ItemsSource = context.Users.Where(c => c.Exist != 0).Select(x => new { ID = x.ID, Name = x.Name, Password = x.Password, Age = x.Age, Email = x.Email, Phone = x.Phone, Sex = x.Sex, UserName = x.UserName , Image =x.Image}).ToList();
        }
        //Get Image for User 
        private void Select_Img_Click(object sender, RoutedEventArgs e)
        {
           OpenFileDialog  ofd = new OpenFileDialog();
            ofd.Title = "Select User_Image";
            ofd.ShowDialog();
            path=ofd.FileName;
            Uri Img_url = new Uri(path);
            Image_.ImageSource = new BitmapImage(Img_url);
           
        }
    }
}
