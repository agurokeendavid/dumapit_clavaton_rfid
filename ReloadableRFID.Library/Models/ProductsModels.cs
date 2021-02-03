using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReloadableRFID.Library.Models
{
    public class ProductsModels
    {
        public int id { get; set; }
        public string Item { get; set; }
        public string ItemName { get; set; }
        public string ItemNumber { get; set; }
        public string Stock { get; set; }
        public string Price { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
