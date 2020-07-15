using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Lebra.Models
{
    class Login  
    {
       

     

        int ID_UTILI;
        string NOM_UTIL;
        string MOTS_PASS_UTIL;
        float DATE_CREATION;
        float DATE_LAST_CNX;
        string N_TELE;
        string EMAIL;
        

       // string trest = DateTime.Now.;

        public Login(string Nom,String Motdepasse, string tele,string email)
        {
            this.NOM_UTIL1 = Nom;
            this.N_TELE1 = tele;
            this.MOTS_PASS_UTIL1 = Motdepasse;
            this.EMAIL1 = email;
            

        }
        public Login()
        { 

        }
        public int ID_UTILI1
        {

            get { return ID_UTILI; }
         

        }
        public string NOM_UTIL1
        {

            get { return NOM_UTIL; }
            set { NOM_UTIL = value;  }

        }
        public string MOTS_PASS_UTIL1
        {

            get { return  (MOTS_PASS_UTIL); }
            set { MOTS_PASS_UTIL =  ( value); }

        }
        public float DATE_CREATION1
        {

            get { return DATE_CREATION; }
            set { DATE_CREATION = value;  }

        }
        public float DATE_LAST_CNX1
        {
            get { return DATE_LAST_CNX; }
            set { DATE_LAST_CNX = value; }

        }
        public string N_TELE1
        {
            get { return N_TELE; }
            set
            {
                if (value.Length == 10)
                {
                    N_TELE = value;
                }
                else throw new Exception("Phone number must be 10 caractere");
            }
        }
        public string EMAIL1
        {
            get { return EMAIL; }            
            set
            {
                
                Regex r = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
                if (r.IsMatch(value)) this.EMAIL = value;
                else throw new Exception("Error Email Ivalide");
            }

        }

      



    }

}
