using BLL;
using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace inventroy_system
{
    /// <summary>
    /// Interaction logic for Supplier_Invoice.xaml
    /// </summary>
    public partial class Supplier_Invoice : Window
    {
        SupplierBill LastSupBill;
        SupplierBillProduct SBProd;
        public string path;
        Context context;
        decimal sum;
        int BillId = 0;
        public ProductsWindow pWindow;
        public Supplier_Invoice()
        {
            InitializeComponent();

           
            context = new Context();
            pWindow = new ProductsWindow();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            decimal result = 0m;
            sum = 0m;
            if (BuysDataGrid.ItemsSource != null)
            {
                for (int i = 0; i < BuysDataGrid.Items.Count; i++)
                {
                    if (decimal.TryParse((BuysDataGrid.Columns[3].GetCellContent(BuysDataGrid.Items[i]) as TextBlock).Text, out result))
                    {

                        sum += result;
                    }
                }


                TotalPriceLabel.Content = "$" + sum.ToString();
            }

        }




        private void ConfirmBtn_Click(object sender, RoutedEventArgs e)
        {

           



        }
            
            /*var thisProduct = context.Products.Where(s => s.Id == int.Parse(ProductIdTB.Text)).ToList().FirstOrDefault();*/


        }
    }

