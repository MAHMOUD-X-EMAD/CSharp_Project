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
    /// Interaction logic for CategoryWindow.xaml
    /// </summary>
    public partial class CategoryWindow : UserControl
    {
        Context context;
        public event EventHandler<List<object>> sources;

        User User;
        public CategoryWindow(User user)
        {

            InitializeComponent();
             context = new Context();
            User=user;
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
            categoryDataGrid.ItemsSource = context.Categories.Where(c => c.Exist != 0).Select(c => new {ID = c.Id,Title = c.Title}).ToList();
        }

        private void AddCatogeryBtn_Click(object sender, RoutedEventArgs e)
        {
            bool IsExist = false;

           // int existId = int.Parse(ProductIdTB.Text);
           if(CategoryNameTB.Text == "")
            {
                MessageBox.Show("enter all your data");

            }
            else
            {

            
                foreach (var item in context.Categories)
                {
                    if (item.Title == CategoryNameTB.Text)
                    {
                        IsExist = true;
                    }
                }


                if (!IsExist)
                {

                Category category = new Category { Title = CategoryNameTB.Text, Exist = 1 };


                context.Categories.Add(category);



                MessageBox.Show($"{CategoryNameTB.Text} Added Sucessfully");
                context.SaveChanges();

                newCommand(User.UserName+"Add Category :"+category.Title);

                var categories = context.Categories.Where(c => c.Exist != 0).Select(c => new { ID = c.Id, Title = c.Title }).ToList();
                categoryDataGrid.ItemsSource = categories;
               // CategoryNameTB.Text;  //categories ;//as List<Category>;
                CategoryNameTB.Text = "";
                

                }
                else
                {
                    MessageBox.Show($"{CategoryNameTB.Text} Is already Exist");
                }
            }



        }

        private void EditCatogeryBtn_Click(object sender, RoutedEventArgs e)
        {
            try { 
            int ID = int.Parse(CategoryIdTB.Text);
            bool IsExist = false;

            // int existId = int.Parse(ProductIdTB.Text);

                foreach (var item in context.Categories)
                {
                    if (item.Title == CategoryNameTB.Text)
                    {
                        IsExist = true;
                    }
                }


                if (!IsExist)
                {

                    var Edited = context.Categories.Where(c => c.Id == ID).FirstOrDefault();
                    string Name = CategoryNameTB.Text;
                    if (CategoryNameTB.Text != "" || Name.Trim() !="" )
                    {
                        Edited.Title = CategoryNameTB.Text;

                        MessageBox.Show($"{CategoryNameTB.Text} Editted Succesfully");
                        newCommand(User.UserName + "Edit Category :" + Edited.Title);


                        context.SaveChanges();
                        var categories = context.Categories.Where(c => c.Exist != 0).Select(c => new { ID = c.Id, Title = c.Title }).ToList();
                        categoryDataGrid.ItemsSource = categories;
                        // sources(this, categories);
                        CategoryNameTB.Text = "";
                        CategoryIdTB.Text = "";
                    }
                    else
                    {
                        MessageBox.Show("enter all your data");
                    }
                }
                else
                {
                    MessageBox.Show($"{CategoryNameTB.Text} Is already Exist try another Title");
                }

            }
                catch
                {
                    MessageBox.Show("Fill All Data");
                }

        }

        private void CategoryDataView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = categoryDataGrid.SelectedItem;

            if (selectedItem != null)
            {
                var properties = selectedItem.GetType().GetProperties();

                CategoryIdTB.Text = properties[0].GetValue(selectedItem).ToString();
                CategoryNameTB.Text = properties[1].GetValue(selectedItem).ToString();
                
            }
          

        }

        private void DeleteCatogeryBtn_Click(object sender, RoutedEventArgs e)
        {
            if(CategoryIdTB.Text == "")
            {
                MessageBox.Show("No item to delete");
            }
            else { 
            int ID = int.Parse(CategoryIdTB.Text);

            Category c = context.Categories.Where(c => c.Id == ID).FirstOrDefault();

            newCommand(User.UserName + "Delete Category :" + c.Title);

            c.Exist = 0;

            MessageBox.Show($"{CategoryNameTB.Text} Deleted Succesfully");

            context.SaveChanges();
            var categories = context.Categories.Where(c => c.Exist != 0).Select(c => new { ID = c.Id, Title = c.Title }).ToList();
            categoryDataGrid.ItemsSource = categories;

            CategoryNameTB.Text = "";
            CategoryIdTB.Text = "";
            }
        }
    }
}
