//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E_Ticaret
{
    using System;
    using System.Collections.Generic;
    
    public partial class Marka
    {
        public Marka()
        {
            this.ürün = new HashSet<ürün>();
        }
    
        public int MarkaID { get; set; }
        public string Markaadı { get; set; }
    
        public virtual ICollection<ürün> ürün { get; set; }
    }
}
