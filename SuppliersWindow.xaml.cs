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

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for SuppliersWindow.xaml
    /// </summary>
    public partial class SuppliersWindow : UserControl
    {
        Context context;

        User User;
        public SuppliersWindow(User user)
        {
            InitializeComponent();
            context = new Context();
            User= user;
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
        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
           SupplierDataGrid.ItemsSource = context.Suppliers.Select(s => new { ID = s.ID, Name = s.Name,
               Phone =s.Phone,City = s.City }).ToList();

        }

        private void AddSupplierBtn_Click(object sender, RoutedEventArgs e)
        {
            bool IsExist = false;

            // int existId = int.Parse(ProductIdTB.Text);
            if(SupplierNameTB.Text == "" || SupplierPhoneTB.Text == "" || SupplierCityTB.Text == "" )
            {
                MessageBox.Show("enter all your data");
            }
            else
            {

           
            foreach (var item in context.Suppliers)
            {
                if (item.Name == SupplierNameTB.Text)
                {
                    IsExist = true;
                }
            }


            if (!IsExist)
            {

                Supplier supplier = new Supplier();
                supplier.Name = SupplierNameTB.Text;
                supplier.Phone = SupplierPhoneTB.Text;
                supplier.City = SupplierCityTB.Text;
                supplier.Exist = 1;
                context.Suppliers.Add(supplier);

                MessageBox.Show($"{SupplierNameTB.Text} Added Sucessfully");

                newCommand(User.UserName + " add Supplier: " + supplier.Name);
                context.SaveChanges();
                var Suppliers = context.Suppliers.Where(c => c.Exist != 0).Select(s => new { ID = s.ID, Name = s.Name, Phone = s.Phone, City = s.City }).ToList();
            
                SupplierDataGrid.ItemsSource = Suppliers;

                SupplierNameTB.Text = "";
                SupplierPhoneTB.Text = "";
                SupplierCityTB.Text = "";
                SupplierIdTB.Text = "";

            }
            else
            {
                MessageBox.Show($"{SupplierNameTB.Text} Is already Exist");
            }
            }
        }

        private void SupplierDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = SupplierDataGrid.SelectedItem;

            if (selectedItem != null)
            {
                var properties = selectedItem.GetType().GetProperties();

                SupplierIdTB.Text = properties[0].GetValue(selectedItem).ToString();
                SupplierNameTB.Text = properties[1].GetValue(selectedItem).ToString();
                SupplierPhoneTB.Text = properties[2].GetValue(selectedItem).ToString();
                SupplierCityTB.Text = properties[3].GetValue(selectedItem).ToString();

            }
        }

        private void EditSupplierBtn_Click(object sender, RoutedEventArgs e)
        {

            try
            {

                string supplierName = SupplierNameTB.Text;
                if (SupplierNameTB.Text == "" || supplierName.Trim() == "" || SupplierPhoneTB.Text.Trim() == "" || SupplierCityTB.Text.Trim() == "" || SupplierIdTB.Text.Trim() == "")
                {
                    MessageBox.Show("enter all your data");
                }
                else
                {
                    int ID = int.Parse(SupplierIdTB.Text);
                    bool IsExist = false;

                    // int existId = int.Parse(ProductIdTB.Text);

                    foreach (var item in context.Suppliers)
                    {
                        if (item.Name == SupplierNameTB.Text)
                        {
                            IsExist = true;
                        }
                    }


                    if (!IsExist)
                    {

                        var Edited = context.Suppliers.Where(s => s.ID == ID).FirstOrDefault();
                        Edited.Name = SupplierNameTB.Text;
                        Edited.Phone = SupplierPhoneTB.Text;
                        Edited.City = SupplierCityTB.Text;
                        Edited.Exist = 1;
                        MessageBox.Show($"{SupplierNameTB.Text} Editted Succesfully");
                        newCommand(User.UserName + " Edit Supplier: " + Edited.Name);


                        context.SaveChanges();
                        var suppliers = context.Suppliers.Where(c => c.Exist != 0).Select(s => new { ID = s.ID, Name = s.Name, Phone = s.Phone, City = s.City }).ToList();
                        SupplierDataGrid.ItemsSource = suppliers;

                        SupplierNameTB.Text = "";
                        SupplierPhoneTB.Text = "";
                        SupplierCityTB.Text = "";
                        SupplierIdTB.Text = "";
                    }
                    else
                    {
                        MessageBox.Show($"{SupplierNameTB.Text} Is already Exist try another Title");
                    }
                }

            }
            catch
            {
                MessageBox.Show("Fill All Data");
            }
        //else
        //{
        //    MessageBox.Show("enter all your data");
        //}

        }

        private void DeleteSupplierBtn_Click(object sender, RoutedEventArgs e)
        {
            if(SupplierIdTB.Text == "")
            {
                MessageBox.Show("No item to delete");
            }
            else {
            int ID = int.Parse(SupplierIdTB.Text);

            Supplier sup = context.Suppliers.Where(s => s.ID == ID).FirstOrDefault();
            newCommand(User.UserName + " Delete Supplier: " + sup.Name);
            sup.Exist = 0;

            MessageBox.Show($"{SupplierNameTB.Text} Deleted Succesfully");
            context.SaveChanges();
            var categories = context.Suppliers.Where(c => c.Exist != 0).Select(s => new { ID = s.ID, Name = s.Name, Phone = s.Phone, City = s.City }).ToList();
            SupplierDataGrid.ItemsSource = categories;

            SupplierNameTB.Text = "";
            SupplierPhoneTB.Text = "";
            SupplierCityTB.Text = "";
            SupplierIdTB.Text = "";
            }
        }
    }
}
