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
using Lebra.View_Models;
using Lebra.View_Model;
using System.Xml;

namespace Lebra.View
   
{
    /// <summary>
    /// Interaction logic for UserPersonne.xaml
    /// </summary>
    public partial class UserPersonne : UserControl
    {
        public UserPersonne()
        {
            InitializeComponent();
        }
        void OnLoad(object sender, RoutedEventArgs e)
         {
            //using (LebraEntities8 LE = new LebraEntities8())
            //{
            //    //Fill combobox TypeIdentity
            //    txtTypeIdenity.ItemsSource = LE.TYPE_IDENTITE.ToList();
            //    txtTypeIdenity.DisplayMemberPath = "TYPE_IDENTITE1";
            //    txtTypeIdenity.SelectedValuePath = "ID_TIDEN";

            //    //Fill combobox txtpays
            //    txtpays.ItemsSource = LE.PAYS.ToList();
            //    txtpays.DisplayMemberPath = "NOM_PAYS";
            //    txtpays.SelectedValuePath = "ID_PAYS";

            //    //Fill combobox txtville
            //    txtville.ItemsSource = LE.VILLES.ToList();

            //    txtville.SelectedValuePath = "ID_VILLE";
            //    txtville.DisplayMemberPath = "NOM_VILLE";

            //    //Fill combobox txtSource
            //    txtSource.ItemsSource = LE.SOURCE_PERSONNE.ToList();

            //    txtSource.SelectedValuePath = "ID_SOURCE";
            //    txtSource.DisplayMemberPath = "NOM_SOURCE";


            //    ////Fill combobox txtgenre
            //    //combotestt.ItemsSource = LE.SEXEs.ToList();

            //    //combotestt.SelectedValuePath = "ID_SEXE";
            //    //combotestt.DisplayMemberPath = "SEXE";



            //}
             
        }

        private void Grid_Scroll(object sender, System.Windows.Controls.Primitives.ScrollEventArgs e)
        {

        }

        private void Next_Click(object sender, RoutedEventArgs e)
        {
          //  PersonneDTO personne1 = new PersonneDTO(int.Parse(txtSource.Text), int.Parse(txtville.Text), int.Parse(txtgenre.Text), int.Parse(txtTypeIdenity.Text), int.Parse(txtpays.Text), txtNomComplet.Text, dtnaissance.SelectedDate.Value, txtAdress.Text, txtCodePostal.Text, txtnumTele.Text, txtTypeIdenity.Text, txtNumPrime.Text, txtCartePermis.Text, dtDatePermis.SelectedDate.Value , txtAdresseMail.Text ) ;
            ViewModelPersonne pvm = new ViewModelPersonne();
            // MessageBox.Show(pvm.SavePersonne(personne));
            PersonneDTO personne = new PersonneDTO(txtNomComplet.Text, txtAdress.Text, txtCodePostal.Text, txtnumTele.Text, txtAdresseMail.Text);

            pvm.ToXML(personne);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            //LebraEntities8 lb = new LebraEntities8();
            //int id = lb.VILLES.First(x => x.NOM_VILLE == txtville.Text).ID_VILLE;
            //MessageBox.Show(id.ToString());


           
        }
    }
}
