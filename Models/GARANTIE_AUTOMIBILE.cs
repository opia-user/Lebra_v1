//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Lebra.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class GARANTIE_AUTOMIBILE
    {
        public int ID_CONTRAT_AUTO { get; set; }
        public int ID_GARANTIE { get; set; }
        public Nullable<double> VALEUR_VEHICULE { get; set; }
        public Nullable<double> VALEUR_REMORQUE { get; set; }
        public Nullable<double> TAUX_FRANCHISE { get; set; }
        public Nullable<double> FRANCHISE_MIN { get; set; }
        public Nullable<double> PRIME_ANNUAL { get; set; }
        public Nullable<double> PRIME_COMPTANT { get; set; }
        public Nullable<double> VALEUR_V_MAX { get; set; }
        public Nullable<double> DESES { get; set; }
        public Nullable<double> INVALIDITE { get; set; }
        public Nullable<double> FR_MEDICAUX { get; set; }
        public Nullable<double> FR_RAPATRIEMENT { get; set; }
        public Nullable<double> AMENAG_DOM { get; set; }
    }
}
