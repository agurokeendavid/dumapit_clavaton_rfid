using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReloadableRFID.Library;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;

namespace ReloadableRFID.Web.Pages
{
    public partial class products : System.Web.UI.Page
    {
        private void ResetForm()
        {
            txtItem.Text = string.Empty;
            txtItemName.Text = string.Empty;
            txtItemNo.Text = string.Empty;
            txtStock.Text = string.Empty;
            txtPrice.Text = string.Empty;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("manage.aspx");
        }

        protected async void add_Click(object sender, EventArgs e)
        {
            try
            {
              
                var product = new ProductsModels()
                {
                    Item = txtItem.Text,
                    ItemName = txtItemName.Text,
                    ItemNumber = txtItemNo.Text,
                    Stock = txtStock.Text,
                    Price = txtPrice.Text,
                };

                await ProductsRepository.InsertProductsAsync(product);
                Response.Write(@"<script>alert('Record successfully created!');</script>");
                ResetForm();
            }
            catch (Exception exception)
            {
                Response.Write($@"<script>alert('${exception.Message}');</script>");
            }

        }
    }
}