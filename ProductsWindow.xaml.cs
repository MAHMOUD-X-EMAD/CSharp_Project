using BLL;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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
using static System.Net.Mime.MediaTypeNames;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for ProductsWindow.xaml
    /// </summary>
    public partial class ProductsWindow : UserControl
    {
        Context context;
        OpenFileDialog openFileDialog;
        public string path;
        List<Bill> Bills;
        SupplierBill LastSupBill;
        SupplierBillProduct SBProd;
        
        decimal sum;

        User User;
        public ProductsWindow(User user)
        {
            InitializeComponent();
            User = user;

            context = new Context();
        }
        public ProductsWindow()
        {
            InitializeComponent();
           
            context = new Context();
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

        private void ProductDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


            var selectedItem = ProductDataGrid.SelectedItem;


            if (selectedItem != null)
            {
                var properties = selectedItem.GetType().GetProperties();
                ProductIdTB.Text = properties[0].GetValue(selectedItem).ToString();
                ProductNameTB.Text = properties[1].GetValue(selectedItem).ToString();
                ProductQuntityTB.Text = properties[2].GetValue(selectedItem).ToString();
                path = properties[4].GetValue(selectedItem).ToString();
                ProductDescriptionTB.Text = properties[3].GetValue(selectedItem).ToString();
                ProductCatgoryCB.Text = properties[5].GetValue(selectedItem).ToString();
                try
                {
                    Uri Img_url = new Uri(properties[4].GetValue(selectedItem).ToString());
                    ProductImage.ImageSource = new BitmapImage(Img_url);
                }
                catch
                {

                }
               

                ProductSupplierCB.Text = context.Products.Where(s => s.Id == int.Parse(ProductIdTB.Text)).Select(s => s.supplier.Name).ToList().FirstOrDefault();
            }


        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            var product = context.Products.Where(p => p.Exist != 0).
            Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, UPrice = s.Price, Image = s.Image , Category = s.Category.Title }).ToList();
            ProductDataGrid.ItemsSource = product;

            Supplier_Invoice supInv = new Supplier_Invoice();



            ProductCatgoryCB.ItemsSource = context.Categories.Where(p => p.Exist != 0).Select(c => c.Title).ToList();

            ProductSupplierCB.ItemsSource = context.Suppliers.Where(p => p.Exist != 0).Select(c => c.Name).ToList();

            FilterCB.ItemsSource = context.Categories.Where(p => p.Exist != 0).Select(c => c.Title).ToList();

        }

        private void ProductDataGrid_PreviewMouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void ConfirmProductBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ProductDataGrid.SelectedItem != null)
            {
                Supplier_Invoice supplierWindow = new Supplier_Invoice();

                supplierWindow.BuysDataGrid.ItemsSource = BuysDataGrid.Items;
                supplierWindow.path = path;
                newCommand(User.Name + "Buy products ");

                sum = 0m;
                for (int i = 0; i < BuysDataGrid.Items.Count; i++)
                {
                    sum += (decimal.Parse((BuysDataGrid.Columns[3].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text));
                }

                supplierWindow.ShowDialog();

                LastSupBill = new SupplierBill
                {
                    Date = DateTime.Now,

                    BillTotalPrice = sum,

                    Supplier = context.Suppliers.Where(c => c.Name == (BuysDataGrid.Columns[5].GetCellContent(BuysDataGrid.Items[0]) as TextBlock).Text).ToList().FirstOrDefault(),

                    Exist = 1,

                };
                sum = 0;
                var column = "";
                for (int i = 0; i < BuysDataGrid.Items.Count; i++)
                {
                    column = (BuysDataGrid.Columns[0].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text;

                    var query = context.Products.Where(s => s.Title == column).ToList().FirstOrDefault();

                    if (query != null)
                    {
                        context.Products.Where(s => s.Title == column).FirstOrDefault()
                            .Quantity += int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text);

                        context.Products.Where(s => s.Title == column).FirstOrDefault()
                            .supplier = context.Suppliers.Where(c => c.Name == (BuysDataGrid.Columns[5].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text).ToList().FirstOrDefault();

                        SBProd = new SupplierBillProduct
                        {
                            Product = context.Products.Where(s => s.Title == column).FirstOrDefault(),

                            SupplierBill = LastSupBill,

                            SupplierBillId = LastSupBill.Id,

                            ProductId = context.Products.Where(s => s.Title == column).FirstOrDefault().Id,


                            ProductQuantity = int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),
                        };






                        MessageBox.Show($"{column} Added Successfully");
                        

                        var product = context.Products.Where(p => p.Exist != 0).
                                Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, Image = s.Image, UPrice = s.Price, Category = s.Category.Title }).ToList();
                        ProductDataGrid.ItemsSource = product;


                        ProductIdTB.Text = "";
                        ProductNameTB.Text = "";
                        ProductQuntityTB.Text = "";
                        ProductDescriptionTB.Text = "";

                        ProductCatgoryCB.Text = "";
                        ProductSupplierCB.Text = "";



                    }
                    else
                    {
                        if (path != null)
                        {

                            Product prod = new Product
                            {
                                Title = (BuysDataGrid.Columns[0].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text,

                                Quantity = int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),
                                Price = decimal.Parse((BuysDataGrid.Columns[2].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),
                                Category = context.Categories.Where(c => c.Title == (BuysDataGrid.Columns[4].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text).ToList().FirstOrDefault(),
                                supplier = context.Suppliers.Where(c => c.Name == (BuysDataGrid.Columns[5].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text).ToList().FirstOrDefault(),
                                Exist = 1,
                                Image = path,

                            };

                            context.Products.Add(prod);

                            SBProd = new SupplierBillProduct
                            {
                                Product = prod,

                                SupplierBill = LastSupBill,

                                ProductId = prod.Id,

                                SupplierBillId = LastSupBill.Id,

                                ProductQuantity = int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),

                            };





                            MessageBox.Show($"{column} Added Successfully");

                            
                            var product = context.Products.Where(p => p.Exist != 0).
                                    Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, Image = s.Image, UPrice = s.Price, Category = s.Category.Title }).ToList();
                            ProductDataGrid.ItemsSource = product;


                            ProductIdTB.Text = "";
                            ProductNameTB.Text = "";
                            ProductQuntityTB.Text = "";
                            ProductDescriptionTB.Text = "";

                            ProductCatgoryCB.Text = "";
                            ProductSupplierCB.Text = "";



                        }
                        else
                        {




                            Product prod = new Product
                            {
                                Title = (BuysDataGrid.Columns[0].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text,

                                Quantity = int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),
                                Price = decimal.Parse((BuysDataGrid.Columns[2].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),
                                Category = context.Categories.Where(c => c.Title == (BuysDataGrid.Columns[4].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text).ToList().FirstOrDefault(),
                                supplier = context.Suppliers.Where(c => c.Name == (BuysDataGrid.Columns[5].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text).ToList().FirstOrDefault(),
                                Exist = 1,
                                Image = "",

                            };

                            context.Products.Add(prod);

                            SBProd = new SupplierBillProduct
                            {
                                Product = prod,

                                SupplierBill = LastSupBill,

                                SupplierBillId = LastSupBill.Id,

                                ProductQuantity = int.Parse((BuysDataGrid.Columns[1].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text),

                            };




                            MessageBox.Show($"{column} Added Successfully");

                            
                            var product = context.Products.Where(p => p.Exist != 0).
                                    Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, Image = s.Image, UPrice = s.Price, Category = s.Category.Title }).ToList();
                            ProductDataGrid.ItemsSource = product;


                            ProductIdTB.Text = "";
                            ProductNameTB.Text = "";
                            ProductQuntityTB.Text = "";
                            ProductDescriptionTB.Text = "";

                            ProductCatgoryCB.Text = "";
                            ProductSupplierCB.Text = "";



                        }
                    }
                    context.SupplierBillProducts.Add(SBProd);

                }
                BuysDataGrid.Items.Clear();

                context.SaveChanges();


            }
            //supplierWindow.BuysDataGrid.Items.Add(Bills);// = ;

        }

        private void EditProductBtn_Click(object sender, RoutedEventArgs e)
        {
            if( ProductDataGrid.SelectedItem != null)
            {
                int ID = int.Parse(ProductIdTB.Text);
                var Edited = context.Products.Where(p => p.Id == ID).ToList().FirstOrDefault();
                bool IsExist = false;

                int existId = int.Parse(ProductIdTB.Text);

                foreach (var item in context.Products)
                {
                    if (item.Id == existId && Edited.Id != ID)
                    {
                        IsExist = true;
                    }
                }

                if (!IsExist)
                {

                    Edited.Title = ProductNameTB.Text;
                    Edited.Id = int.Parse(ProductIdTB.Text);
                    Edited.supplier = context.Suppliers.Where(c => c.Name == ProductSupplierCB.Text).ToList().FirstOrDefault();
                    Edited.Category = context.Categories.Where(c => c.Title == ProductCatgoryCB.Text).ToList().FirstOrDefault();
                    Edited.Quantity = int.Parse(ProductQuntityTB.Text);
                    Edited.Price = decimal.Parse(ProductDescriptionTB.Text);
                    Edited.Image = path;
                    Edited.Exist = 1;
                    MessageBox.Show($"{ProductNameTB.Text} Editted Succesfully");
                    context.SaveChanges();

                    newCommand(User.Name + "Update Product: " + Edited.Title);
                    var product = context.Products.Where(p => p.Exist != 0).
                    Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, UPrice = s.Price, Category = s.Category.Title, Image = s.Image }).ToList();
                    ProductDataGrid.ItemsSource = product;


                    ProductIdTB.Text = "";
                    ProductNameTB.Text = "";
                    ProductQuntityTB.Text = "";
                    ProductDescriptionTB.Text = "";

                    ProductCatgoryCB.Text = "";
                    ProductSupplierCB.Text = "";
                }

                else
                {
                    MessageBox.Show("This Id Is Exist Try to add With Another Id");
                }
            }
            else
            {
                MessageBox.Show("select product First");
            }
           
        }

        private void DeleteProductBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItem = ProductDataGrid.SelectedItem;
            if (selectedItem != null)
            {
                int ID = int.Parse(ProductIdTB.Text);
                Product p = context.Products.Where(p => p.Id == ID).ToList().FirstOrDefault();
                newCommand(User.Name + "Deleted Product: " + p.Title);

                p.Exist = 0;

                context.SaveChanges();

                MessageBox.Show($"{ProductNameTB.Text} Deleted Succesfully");

                var product = context.Products.Where(p => p.Exist != 0).
                Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, UPrice = s.Price, Category = s.Category.Title, Image = s.Image }).ToList();
                ProductDataGrid.ItemsSource = product;

                ProductIdTB.Text = "";
                ProductNameTB.Text = "";
                ProductQuntityTB.Text = "";
                ProductDescriptionTB.Text = "";

                ProductCatgoryCB.Text = "";
                ProductSupplierCB.Text = "";
            }

        }

        private void FilterCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

         
                var Filteredproducts = context.Products.
                Where(p => p.Category.Title == FilterCB.SelectedValue && p.Exist != 0).
                Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, UPrice = s.Price, Category = s.Category.Title, Image = s.Image }).ToList();
                ProductDataGrid.ItemsSource = Filteredproducts;


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

          
            
        }

        private void AddProductBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ProductNameTB.Text != "" && ProductQuntityTB.Text != "" && ProductDescriptionTB.Text != "" && ProductCatgoryCB.Text != "" && ProductSupplierCB.Text != "")
            {
                int num;
                
                bool success1 = int.TryParse(ProductQuntityTB.Text, out num);
                bool success2 = int.TryParse(ProductDescriptionTB.Text, out num);

                if (success1 && success2 && num > 0)
                {
                    if (int.Parse(ProductQuntityTB.Text) > 0 && int.Parse(ProductDescriptionTB.Text) > 0)
                    {
                        Bills = new List<Bill>();

                        Bills.Add(new Bill()
                        {
                            ProductTitle = ProductNameTB.Text,
                            Quantity = int.Parse(ProductQuntityTB.Text),
                            Price = Decimal.Parse(ProductDescriptionTB.Text),
                            TotalPrice = Decimal.Parse(ProductQuntityTB.Text) * Decimal.Parse(ProductDescriptionTB.Text),
                            supplier = context.Suppliers.Where(c => c.Name == ProductSupplierCB.Text).Select(s => s.Name).ToList().FirstOrDefault(),
                            category = context.Categories.Where(c => c.Title == ProductCatgoryCB.Text).Select(s => s.Title).ToList().FirstOrDefault(),
                            Image = path,
                        });

                        BuysDataGrid.Items.Add(Bills);

                        ProductIdTB.Text = "";
                        ProductNameTB.Text = "";
                        ProductQuntityTB.Text = "";
                        ProductDescriptionTB.Text = "";

                        ProductCatgoryCB.Text = "";
                        ProductSupplierCB.Text = "";
                    }
                    else
                    {
                        MessageBox.Show("Numbers must be Positive");
                    }
                }
                else
                {
                    MessageBox.Show("Invalid Quantity or Price input");
                }
            }
            else
            {
                MessageBox.Show("Invalid Inputs");
            }
        }

        private void FilterBuysCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           /* BuysDataGrid.ItemsSource = null;
            BuysDataGrid.ItemsSource = Bills.Where(s=> s.category == FilterBuysCB.SelectedValue);*/
        }

        private void ClearBuysBtn_Click(object sender, RoutedEventArgs e)
        {
            BuysDataGrid.Items.Clear();
        }

        private void DeleteBuysBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedItem = BuysDataGrid.SelectedItem;
            if (selectedItem != null)
            {
                BuysDataGrid.Items.Remove(selectedItem);
            }
        }

        private void AllProductBtn_Click(object sender, RoutedEventArgs e)
        {
            var product = context.Products.Where(p => p.Exist != 0).
            Select(s => new { Num = s.Id, Product = s.Title, Quantity = s.Quantity, UPrice = s.Price, Category = s.Category.Title, Image = s.Image }).ToList();
            ProductDataGrid.ItemsSource = product;

        }

        private void SelectImageBtn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFD = new OpenFileDialog();

            openFD.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.gif;*.tif;..."; 

            openFD.ShowDialog();
            path = openFD.FileName.ToString();
            try
            {
                Uri Img_url = new Uri(path);
                ProductImage.ImageSource = new BitmapImage(Img_url);
            }
            catch (Exception ex)
            {
                ProductImage.ImageSource = null;
            }

        }
    }
}
