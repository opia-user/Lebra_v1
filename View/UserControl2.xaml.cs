using Lebra.Models;
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
using System.Data.SqlClient;
using System.Web;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Net;
using Org.BouncyCastle.Crypto.Engines;
using Org.BouncyCastle.Crypto.Digests;
using System.Security.Cryptography;
using NPOI.SS.Formula.Functions;
using System.IO;
using System.Security.Cryptography;

namespace Lebra.View
{
    /// <summary>
    /// Interaction logic for UserControl2.xaml
    /// </summary>
    public partial class UserControl2 : UserControl
    {
        public UserControl2()
        {
            InitializeComponent();
        }
         
        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
        
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btnTest_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Login lg = new Login(txtnom.Text, txtMotdepasse.Text, txtTelephone.Text, txtEmail.Text);
                loginViewModel vm = new loginViewModel();
                MessageBox.Show(vm.save(lg));

                txtEmail.Text = txtMotdepasse.Text = txtnom.Text = txtTelephone.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void txtTelephone_TextChanged(object sender, TextChangedEventArgs e)
        {
            //if (txtTelephone.Text.Length == 10)
            //{
            //    btnTest.IsEnabled = true;
            //}
            //else
            //    btnTest.IsEnabled = false;

        }

        private void txtnom_TextChanged(object sender, TextChangedEventArgs e)
        {
            
        }

        private void txtEmail_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
       
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            DateTime yourDateTime= DateTime.Now;
            long yourDateTimeMilliseconds = new DateTimeOffset(yourDateTime).ToUnixTimeMilliseconds();
            MessageBox.Show(yourDateTimeMilliseconds.ToString());



            var startdate = DateTimeOffset.FromUnixTimeMilliseconds((yourDateTimeMilliseconds)).UtcDateTime;
            MessageBox.Show(startdate.ToString());

            //var posixTime = DateTime.SpecifyKind(new DateTime(1970, 1, 1), DateTimeKind.Utc);
            //var time = posixTime.AddMilliseconds(yourDateTime.ToString());
            //MessageBox.Show(time.ToString());
        }
    }
}
