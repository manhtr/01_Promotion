//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Promotion.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class LiXi
    {
        public int ID { get; set; }
        public string CIF { get; set; }
        public string AccountNumber { get; set; }
        public string CustomerName { get; set; }
        public string CMND { get; set; }
        public string Telephone { get; set; }
        public string Address { get; set; }
        public string CoCode { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> Created { get; set; }
        public Nullable<bool> IsUsed { get; set; }
        public string DAO_CODE { get; set; }
        public string DEPT_CODE { get; set; }
        public string DeletedBy { get; set; }
        public Nullable<System.DateTime> Deleted { get; set; }
    }
}
