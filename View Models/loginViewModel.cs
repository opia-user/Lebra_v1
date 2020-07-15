using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel;
using Lebra.Models;
using System.Web;
using System.Net.Mail;
using System.Net;


using System.Collections.ObjectModel;
using System.Security.Cryptography;

namespace Lebra.View_Models
{
    class loginViewModel  
    {

        UTILISATEUR_BLOOM objLogin = new UTILISATEUR_BLOOM();

        LebraEntities8 be = new LebraEntities8();
        public string save(Login lg)
        {
            string message = "";
            UTILISATEUR_BLOOM ad = new UTILISATEUR_BLOOM();
            bool exist = false;
            foreach (UTILISATEUR_BLOOM a in be.UTILISATEUR_BLOOM.ToList())
            {
                if (a.EMAIL.Equals(lg.EMAIL1) )
                {
                    exist = true;
                }

            }

            if (exist == false) {
                ad.NOM_UTIL = (lg.NOM_UTIL1);
                ad.MOTS_PASS_UTIL = ProtectPassword( lg.MOTS_PASS_UTIL1);
                ad.EMAIL = lg.EMAIL1;
                ad.N_TELE = lg.N_TELE1;
                ad.DATE_CREATION = ConvertDateToMilisecond(DateTime.Now);
                ad.DATE_LAST_CNX = ConvertDateToMilisecond(DateTime.Now);
                ad.Role =0;

                be.UTILISATEUR_BLOOM.Add(ad);
                be.SaveChanges();
                message = "Bien ajoute";
                sendMail(lg.EMAIL1);
            }
            else
            {
                message = "L'adresse mail existe deja";
  
            }
            return message;
            
           
        }



        public void sendMail(string  Email)
        {

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("Usaf19991999@gmail.com");
                mail.To.Add(Email);
                mail.Subject = "Authentification succeded";
                mail.Body = "<h1>Votre inscription est faite avec succès chez Lebra</h1>";
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("Usaf19991999@gmail.com", "15975326842tt");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

        }

        public string check(string mail,string mdp)
        {

            UTILISATEUR_BLOOM ad = new UTILISATEUR_BLOOM();
            

            string tr = "";

            foreach (UTILISATEUR_BLOOM a in be.UTILISATEUR_BLOOM.ToList())
            {
                if (a.EMAIL.Equals(mail) )
                {
                    if (mdp.Equals(UnprotectPassword(a.MOTS_PASS_UTIL))) { 
                    tr = a.NOM_UTIL;
                    a.DATE_LAST_CNX = ConvertDateToMilisecond(DateTime.Now);
                    be.SaveChanges();break;
                    }               
                }

            }
            return tr;
        }

        static string ProtectPassword(string clearPassword)
        {
            byte[] bytes = Encoding.UTF8.GetBytes(clearPassword);
            byte[] protectedBytes = ProtectedData.Protect(bytes, null, DataProtectionScope.CurrentUser);
            return Convert.ToBase64String(protectedBytes);
        }

        static string UnprotectPassword(string protectedPassword)
        {
            byte[] protectedBytes = Convert.FromBase64String(protectedPassword);
            byte[] bytes = ProtectedData.Unprotect(protectedBytes, null, DataProtectionScope.CurrentUser);
            return Encoding.UTF8.GetString(bytes);
        }


        public long ConvertDateToMilisecond(DateTime yourDateTime)
        {
           
            long yourDateTimeMilliseconds = new DateTimeOffset(yourDateTime).ToUnixTimeMilliseconds();
            return yourDateTimeMilliseconds;

        }

        public DateTime ConvertMilisecondToDate(long yourDateTime)
        {
          var startdate = DateTimeOffset.FromUnixTimeMilliseconds((yourDateTime)).UtcDateTime;
          return startdate;
        }


    }
}
