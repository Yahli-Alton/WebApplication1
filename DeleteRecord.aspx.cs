using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        string fileName = "DatabaseOfCountries2.mdf";
        string tableName = "usersTbl";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == "False") Response.Redirect("CountriesMainPage.aspx");
            string uName = Request.QueryString["uName"].ToString();
            string sqlDelete = "DELETE FROM usersTbl WHERE UserName = '" + uName + "'";
            Helper.DoQuery(fileName, sqlDelete);
            Response.Redirect("DeleteUser.aspx");
        }
    }
}