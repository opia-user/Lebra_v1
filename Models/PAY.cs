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
    
    public partial class PAY
    {
        public PAY()
        {
            this.PERSONNEs = new HashSet<PERSONNE>();
            this.VILLES = new HashSet<VILLE>();
        }
    
        public int ID_PAYS { get; set; }
        public string NOM_PAYS { get; set; }
    
        public virtual ICollection<PERSONNE> PERSONNEs { get; set; }
        public virtual ICollection<VILLE> VILLES { get; set; }
    }
}
