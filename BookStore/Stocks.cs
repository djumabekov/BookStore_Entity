//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BookStore
{
    using System;
    using System.Collections.Generic;
    
    public partial class Stocks
    {
        public int Id { get; set; }
        public int IdBook { get; set; }
        public string StockName { get; set; }
        public decimal StockPercent { get; set; }
    
        public virtual Books Books { get; set; }
    }
}
