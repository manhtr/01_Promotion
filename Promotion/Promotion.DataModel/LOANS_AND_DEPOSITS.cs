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
    
    public partial class LOANS_AND_DEPOSITS
    {
        public string CONTRACT_NO { get; set; }
        public string CATEGORY { get; set; }
        public string CUSTOMER_ID { get; set; }
        public string CURRENCY { get; set; }
        public string TERM { get; set; }
        public Nullable<double> AMOUNT { get; set; }
        public Nullable<System.DateTime> VALUE_DATE { get; set; }
        public Nullable<System.DateTime> FIN_MAT_DATE { get; set; }
        public Nullable<decimal> INTEREST_RATE { get; set; }
        public Nullable<decimal> TOTAL_INTEREST_AMT { get; set; }
        public string CUST_REMARKS { get; set; }
        public string SO_HOP_DONG { get; set; }
        public string CO_CODE { get; set; }
        public string DEPT_CODE { get; set; }
    }
}
