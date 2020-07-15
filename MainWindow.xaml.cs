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
using Lebra.View;
using Lebra.View_Models;
namespace Lebra
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        loginViewModel ViewModel;
        public MainWindow()
        {
            InitializeComponent();
            ViewModel = new loginViewModel();
            this.DataContext = ViewModel;
            //UserControl2.VisibilityProperty.
              
        }

        private void UserControl2_Loaded(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //  UserControl2.RequestBringIntoViewEvent;
            // inscription.Visibility=false;
            //  btntest.Visibility = false
         // btntest.Visibility =  ;
           // UserControl2_Loaded.Visibility = Visibility;

        }

        private void UserControl2_Loaded_1(object sender, RoutedEventArgs e)
        {

        }

        private void UserControl2_Loaded_2(object sender, RoutedEventArgs e)
        {

        }
    }
}
