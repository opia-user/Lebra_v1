using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lebra.Models
{
    class PersonneDTO
    {

        private int ID_PERSONNE;
        private int ID_SOURCE;
        private int ID_VILLE;
        private int ID_SEXE;
        private int ID_TIDEN;
        private int ID_PAYS;
        private string NOM_COMPLET;
        private DateTime DATE_NAISS;
        private string ADRESSE;
        private string CODE_POSTAL;
        private string N_TELEPHONE;
        private string N_IDENT;
        private string N_PIRME;
        private string CATE_PERMI;
        private DateTime DATE_PERM;
        private string ADRESSE_MAIL;

        public PersonneDTO(int ID_SOURCE, int ID_VILLE, int ID_SEXE, int ID_TIDEN, int ID_PAYS, string NOM_COMPLET, DateTime DATE_NAISS, string ADRESSE, string CODE_POSTAL, string N_TELEPHONE, string N_IDENT, string N_PIRME, string CATE_PERMI, DateTime DATE_PERM, string ADRESSE_MAIL)
        {

            this.ID_SOURCE1 = ID_SOURCE;
            this.ID_VILLE1 = ID_VILLE;
            this.ID_TIDEN1 = ID_TIDEN;
            this.ID_PAYS1 = ID_PAYS;
            this.ID_SEXE1 = ID_SEXE;
            this.NOM_COMPLET1 = NOM_COMPLET;
            this.DATE_NAISS1 = DATE_NAISS;
            this.ADRESSE1 = ADRESSE;
            this.CODE_POSTAL1 = CODE_POSTAL;
            this.N_TELEPHONE1 = N_TELEPHONE;
            this.N_IDENT1 = N_IDENT;
            this.N_PIRME1 = N_PIRME;
            this.CATE_PERMI1 = CATE_PERMI;
            this.DATE_PERM1 = DATE_PERM;
            this.ADRESSE_MAIL1 = ADRESSE_MAIL;


        }


        public PersonneDTO( string NOM_COMPLET, string ADRESSE, string CODE_POSTAL, string N_TELEPHONE , string ADRESSE_MAIL)
        {

            //this.ID_SOURCE1 = ID_SOURCE;
            //this.ID_VILLE1 = ID_VILLE;
            //this.ID_TIDEN1 = ID_TIDEN;
            //this.ID_PAYS1 = ID_PAYS;
            //this.ID_SEXE1 = ID_SEXE;
            this.NOM_COMPLET1 = NOM_COMPLET;
           // this.DATE_NAISS1 = DATE_NAISS;
            this.ADRESSE1 = ADRESSE;
            this.CODE_POSTAL1 = CODE_POSTAL;
            this.N_TELEPHONE1 = N_TELEPHONE;
            //this.N_IDENT1 = N_IDENT;
            //this.N_PIRME1 = N_PIRME;
            //this.CATE_PERMI1 = CATE_PERMI;
           // this.DATE_PERM1 = date;
            this.ADRESSE_MAIL1 = ADRESSE_MAIL;


        }


        public int ID_SOURCE1 { get => ID_SOURCE; set => ID_SOURCE = value; }
        public int ID_VILLE1 { get => ID_VILLE; set => ID_VILLE = value; }
        public int ID_SEXE1 { get => ID_SEXE; set => ID_SEXE = value; }
        public int ID_TIDEN1 { get => ID_TIDEN; set => ID_TIDEN = value; }
        public int ID_PAYS1 { get => ID_PAYS; set => ID_PAYS = value; }
        public string NOM_COMPLET1 { get => NOM_COMPLET; set => NOM_COMPLET = value; }
        public DateTime DATE_NAISS1 { get => DATE_NAISS; set => DATE_NAISS = value; }
        public string ADRESSE1 { get => ADRESSE; set => ADRESSE = value; }
        public string CODE_POSTAL1 { get => CODE_POSTAL; set => CODE_POSTAL = value; }
        public string N_TELEPHONE1 { get => N_TELEPHONE; set => N_TELEPHONE = value; }
        public string N_IDENT1 { get => N_IDENT; set => N_IDENT = value; }
        public string N_PIRME1 { get => N_PIRME; set => N_PIRME = value; }
        public string CATE_PERMI1 { get => CATE_PERMI; set => CATE_PERMI = value; }
        public DateTime DATE_PERM1 { get => DATE_PERM; set => DATE_PERM = value; }
        public string ADRESSE_MAIL1 { get => ADRESSE_MAIL; set => ADRESSE_MAIL = value; }
        public int ID_PERSONNE1 { set => ID_PERSONNE = value; }


    }
}
