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
using Lebra.View_Models;
namespace Lebra.View
{
    /// <summary>
    /// Interaction logic for loginTest.xaml
    /// </summary>
    public partial class loginTest : UserControl
    {
        public loginTest()
        {
            InitializeComponent();
        }
        loginViewModel vm = new loginViewModel();
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            if (vm.check(txtmail.Text, txtmdp.Password) == "")
            {
                MessageBox.Show("Inexistant");
            }
            else
            {
                MessageBox.Show("Bonjour "+ vm.check(txtmail.Text, txtmdp.Password));

            }
        }
    }
}
