using Lebra.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace Lebra.View_Model
{
    class ViewModelPersonne
    {
        LebraEntities8 lb = new LebraEntities8();

        public string SavePersonne(PersonneDTO personne)
        {
            String message;
            message = checkPersonne(personne.N_PIRME1);
            if (message.Length != 0)
            {

            }
            else
            {
                PERSONNE PER = new PERSONNE();
                PER.Fk_ID_SOURCE = personne.ID_SOURCE1;
                PER.Fk_ID_VILLE = personne.ID_VILLE1;
                PER.Fk_ID_SEXE = personne.ID_SEXE1;
                PER.Fk_ID_TIDEN = personne.ID_TIDEN1;
                PER.Fk_ID_PAYS = personne.ID_PAYS1;
                PER.NOM_COMPLET = personne.NOM_COMPLET1;
                PER.DATE_NAISS =  ConvertDateToMilisecond( personne.DATE_NAISS1);
                PER.ADRESSE = personne.ADRESSE1;
                PER.CODE_POSTAL = personne.CODE_POSTAL1;
                PER.N_TELEPHONE = personne.N_TELEPHONE1;
                PER.N_IDENT = personne.N_IDENT1;
                PER.N_PIRME = personne.N_PIRME1;
                PER.CATE_PERMI = personne.CATE_PERMI1;
                PER.DATE_NAISS = ConvertDateToMilisecond( personne.DATE_NAISS1);
                PER.ADRESSE_MAIL = personne.ADRESSE_MAIL1;
                lb.PERSONNEs.Add(PER);
                lb.SaveChanges();
                message = "Bien ajouté";

            }
            return message;
        }
        public string checkPersonne(string NPermi)
        {
            string existe = "";
            foreach (PERSONNE PR in lb.PERSONNEs)
            {
                if (PR.N_PIRME.Equals(NPermi))
                {
                    existe = "ce personne existe deja";
                    break;
                }
            }

            return existe;
        }

        public string delete(string NPerm)
        {
            string message = checkPersonne(NPerm);
            if (message.Length != 0)
            {
                PERSONNE personne = lb.PERSONNEs.First(x => x.N_PIRME == NPerm);

                lb.PERSONNEs.Remove(personne);
                lb.SaveChanges();
                message = "Bien supp";

            }
            else
            {
                message = "ce personne n'existe pas";
            }
            return message;
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


        public void SauvegardXML( )
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<item><name>wrench</name></item>");

            // Add a price element.
            XmlElement newElem = doc.CreateElement("price");
            newElem.InnerText = "10.95";
            doc.DocumentElement.AppendChild(newElem);

            XmlWriterSettings settings = new XmlWriterSettings();
            settings.Indent = true;
            // Save the document to a file and auto-indent the output.
            XmlWriter writer = XmlWriter.Create(@"C:\data.xml", settings);
            doc.Save(writer);
        }

        public void ToXML(PersonneDTO pers)
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<item><ID_SOURCE1>"+pers.ID_SOURCE1+"</ID_SOURCE1></item>");

            // Add a ID_VILLE1 element.
           //// ToXmlElemet(pers.ID_VILLE1.ToString(),  doc);

            // Add a ID_SEXE1 element.
          ////  ToXmlElemet(pers.ID_SEXE1.ToString(), doc);
            // Add a ID_TIDEN1 element.
          ////  ToXmlElemet(pers.ID_TIDEN1.ToString(), doc);
            // Add a ID_PAYS1 element.
           //// ToXmlElemet(pers.ID_PAYS1.ToString(), doc);
            // Add a NOM_COMPLET1 element.
            ToXmlElemet(pers.NOM_COMPLET1.ToString(), doc);

            // Add a DATE_NAISS1 element.
           /// ToXmlElemet(pers.DATE_NAISS1.ToString(), doc);

            // Add a ADRESSE1 element.
            ToXmlElemet(pers.ADRESSE1.ToString(), doc);

            // Add a CODE_POSTAL1 element.
            ToXmlElemet(pers.CODE_POSTAL1.ToString(), doc);

            // Add a N_TELEPHONE1 element.
            ToXmlElemet(pers.N_TELEPHONE1.ToString(), doc);

            // Add a N_IDENT1 element.
            ////ToXmlElemet(pers.N_IDENT1.ToString(), doc);

            // Add a N_PIRME1 element.
            ToXmlElemet(pers.N_PIRME1.ToString(), doc);

            // Add a CATE_PERMI1 element.
            ToXmlElemet(pers.CATE_PERMI1.ToString(), doc);

            // Add a DATE_NAISS1 element.
            ///ToXmlElemet(pers.DATE_NAISS1.ToString(), doc);
            ///
            // Add a ADRESSE_MAIL1 element.
            ToXmlElemet(pers.ADRESSE_MAIL1.ToString(), doc);


            // Add a price element.


            XmlWriterSettings settings = new XmlWriterSettings();
            settings.Indent = true;
            // Save the document to a file and auto-indent the output.
            XmlWriter writer = XmlWriter.Create(@"C:\data.xml", settings);
            doc.Save(writer);
        }

        public void ToXmlElemet(string Element, XmlDocument doc)
        {           
            XmlElement newElem = doc.CreateElement(Element);
            newElem.InnerText = Element;
            doc.DocumentElement.AppendChild(newElem);
        }
    }
}
