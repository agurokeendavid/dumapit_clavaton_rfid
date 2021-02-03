using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReloadableRFID.Web.Pages
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("products.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");
        }
    }
}