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
    /// Interaction logic for ManageInvoicesWindow.xaml
    /// </summary>
    public partial class ManageInvoicesWindow : UserControl
    {
        Context context = new Context();
        public ManageInvoicesWindow()
        {
            InitializeComponent();
            context=new Context();
            fillCustomerInvoice();
            fillProductInvoice();
            fillProductCombobox();
            fillCustomerCombobox();
        }

        public void fillCustomerInvoice()
        {
            CustomerInvoiceDataGrid.ItemsSource = context.recipts.ToList();
        }
        public void fillProductInvoice()
        {
            ProductInvoiceDataGrid.ItemsSource = context.SupplierBills.ToList();
        }

        public void fillCustomerCombobox()
        {
            FilterCustomerCB.ItemsSource = context.Customers.Select(C => new { Id = C.ID, Name = C.Name }).ToList();
            FilterCustomerCB.DisplayMemberPath = "Name";
            FilterCustomerCB.SelectedValuePath = "Id";
        }
        public void fillProductCombobox()
        {
            ProductCustomerFilterCB.ItemsSource = context.Suppliers.Select(C => new { Id = C.ID, Name = C.Name }).ToList();
            ProductCustomerFilterCB.DisplayMemberPath = "Name";
            ProductCustomerFilterCB.SelectedValuePath = "Id";

        }

        

        private void AllCustomerInvoiceBtn_Click(object sender, RoutedEventArgs e)
        {
            fillCustomerInvoice();
        }

        private void AllProductInvoiceBtn_Click(object sender, RoutedEventArgs e)
        {
            fillProductInvoice();

        }

        private void ProductCustomerFilterCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int id=int.Parse( ProductCustomerFilterCB.SelectedValue.ToString());
            ProductInvoiceDataGrid.ItemsSource = context.SupplierBills.Where(S=>S.Supplier.ID== id).ToList();

        }

        private void FilterCustomerCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int id = int.Parse(FilterCustomerCB.SelectedValue.ToString());
            CustomerInvoiceDataGrid.ItemsSource = context.recipts.Where(R => R.CustomerId == id).ToList();
        }

        private void CustomerInvoiceDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Recipt recipt = CustomerInvoiceDataGrid.SelectedItem as Recipt;

            if (recipt != null)
            {
              MessageBoxResult  result = MessageBox.Show("are you want to show recipt ",
                      "Save file",
                      MessageBoxButton.YesNo,
                      MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                   Recipt recipt1=context.recipts.Where(r=>r.ID==recipt.ID).FirstOrDefault();   
                    Invoice invoce = new Invoice(recipt1);
                    invoce.ShowDialog();
                }

            }
        }

        private void ProductInvoiceDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
          

            if (ProductInvoiceDataGrid.SelectedItem != null)
            {
                MessageBoxResult result = MessageBox.Show("are you want to show Bill ",
                        "Save file",
                        MessageBoxButton.YesNo,
                        MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    SupplierBill Bill = ProductInvoiceDataGrid.SelectedItem as SupplierBill;

                    List<Bill> bills = new List<Bill>();
                    var supplierbills = context.SupplierBills.Include(S => S.Supplier).ThenInclude(S => S.Products).FirstOrDefault(S => S.Id == Bill.Id);
                    var supplierproductId = context.SupplierBillProducts.Include(S => S.SupplierBill).ThenInclude(S => S.SupplierBills).ThenInclude(S => S.Product).FirstOrDefault(S => S.SupplierBillId == Bill.Id);
                    var Image = supplierproductId.Product.Image;
                    var Name = supplierbills.Supplier.Name;


                    foreach (var item in supplierproductId.SupplierBill.SupplierBills)
                    {
                        bills.Add(

                            new Bill
                            {
                                Image = item.Product.Image,
                                InvoiceTotalPrice = (int)supplierbills.BillTotalPrice,
                                Quantity = item.Product.Quantity,
                                category = "mobile",
                                BillId = supplierbills.Id,
                                Price = item.Product.Price,
                                ProductTitle = item.Product.Title,
                                supplier = supplierbills.Supplier.Name,
                                TotalPrice = item.Product.Quantity * item.Product.Price,
                                ProductId = item.Id
                            }
                            );
                    }

                    Supplier_Invoice supplier_Invoice = new Supplier_Invoice();
                    supplier_Invoice.BuysDataGrid.ItemsSource = bills;
                    supplier_Invoice.ShowDialog();

                }
            }
        }
    }
}
        
    

