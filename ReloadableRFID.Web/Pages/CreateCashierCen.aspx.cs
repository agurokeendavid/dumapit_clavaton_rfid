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
    public partial class CreateCashier : System.Web.UI.Page
    {  
        private void ResetForm()
        {
            txtCashierNo.Text = string.Empty;
            txtFN.Text = string.Empty;
            txtMN.Text = string.Empty;
            txtLN.Text = string.Empty;
            txtDob.Text = string.Empty;
            rblGender.ClearSelection();
            txtAddress.Text = string.Empty;
            txtContact.Text = string.Empty;
            fuPhoto.Attributes.Clear();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected async void btnRegister_OnClick(object sender, EventArgs e)
        {
            try
            {
                int userId = await UserRepository.GenerateKey();
                var user = new UserModel()
                {
                    Id = userId,
                    Username = $"cashier{userId}",
                    Password = $"cashier{userId}",
                    AccountTypeId = GlobalVariable.Cashier1AccountTypeId
                };
                var cashier = new CashierModel()
                {
                    UserId = userId,
                    CashierNo = txtCashierNo.Text,
                    FirstName = txtFN.Text,
                    MiddleName = txtMN.Text,
                    LastName = txtLN.Text,
                    Dob = Convert.ToDateTime(txtDob.Text, CultureInfo.InvariantCulture),
                    Gender = rblGender.SelectedItem.Value,
                    Address = txtAddress.Text,
                    ContatNumber = txtContact.Text,
                    Photo = fuPhoto.FileBytes
                };
                await UserRepository.InsertUserAsync(user);
                await CashierRepository.InsertCashierAsync(cashier);
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