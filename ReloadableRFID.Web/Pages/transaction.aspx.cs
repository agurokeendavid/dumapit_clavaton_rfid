using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReloadableRFID.Web.Pages
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        private readonly object CashierResporitor;

        //async Task FillDataTable()
        //{
        //    var cashier = await CashierResporitor.GetSenisAsync();
        //    using (var dt = new System.Data.DataTable())
        //    {
        //        dt.Columns.Add("Id", typeof(int));
        //        dt.Columns.Add("SeniorId", typeof(string));
        //        dt.Columns.Add("FullName", typeof(string));
        //        dt.Columns.Add("Dob", typeof(DateTime));
        //        dt.Columns.Add("MaritalStatus", typeof(string));
        //        dt.Columns.Add("ContactNo", typeof(string));
        //        dt.Columns.Add("Religion", typeof(string));
        //        dt.Columns.Add("Barangay", typeof(string));
        //        dt.Columns.Add("Municipality", typeof(string));
        //        dt.Columns.Add("Province", typeof(string));
        //        foreach (var senior in seniors)
        //        {
        //            dt.Rows.Add(senior.Id, senior.SeniorID,
        //                $"{senior.LastName}, {senior.FirstName} {senior.MiddleName}", senior.DOB, senior.MaritialStatus,
        //                senior.ContactNum, senior.Religion, senior.Barangay, senior.Municipality,
        //                senior.Province);
        //        }
        //        return dt;
        //    }
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //gvRecords.DataSource = await FillDataTable();
            //gvRecords.DataBind();
        }

        protected void gvRecords_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}