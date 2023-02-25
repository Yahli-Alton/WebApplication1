using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null) {
                string username = Request.Form["uName"];
                string password = Request.Form["pw"];

                string fileName = "DatabaseOfCountries2.mdf";
                string tableName = "usersTBl";

                sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + username + "' AND pw = '" + password + "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                if (length == 0) msg = "user name or password is incorrect";
                else {
                    Session["uName"] = table.Rows[0]["uName"];
                    Session["userFName"] = table.Rows[0]["fName"];
                    Response.Redirect("CountriesMainPage.aspx");
                }
            }
        }
    }
}