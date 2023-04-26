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
        public string msg = "not submit";
        public string sqlLogin;
        public string sqlLogin2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null) {
                string username = Request.Form["uName"];
                string password = Request.Form["pw"];

                string fileName = "DatabaseOfCountries2.mdf";
                string tableName = "AdminsTBl";
                string tableName2 = "usersTBl";

                if (username.Length < 2 || password.Length < 2) msg = "user name or password is incorrect";
                else
                {
                    sqlLogin = "SELECT * FROM " + tableName + " WHERE UserName = '" + username + "' AND pw = '" + password + "'";
                    sqlLogin2 = "SELECT * FROM " + tableName2 + " WHERE UserName = '" + username + "' AND pw = '" + password + "'";

                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                    if (table.Rows.Count == 1)
                    {
                        msg = "submit";
                        Session["uName"] = table.Rows[0]["UserName"];
                        Session["userFName"] = table.Rows[0]["UserName"];
                        Session["Admin"] = "True";
                        Response.Redirect("CountriesMainPage.aspx");
                    }
                    else
                    {
                        table = Helper.ExecuteDataTable(fileName, sqlLogin2);
                        int length = table.Rows.Count;
                        if (length == 0) msg = "user name or password is incorrect";
                        else
                        {
                            msg = "submit";
                            Application.Lock();
                            Application["counter"] = (int)Application["counter"] + 1;
                            Application.UnLock();
                            Session["uName"] = table.Rows[0]["UserName"];
                            Session["userFName"] = table.Rows[0]["FirstName"];
                            Response.Redirect("CountriesMainPage.aspx");
                        }
                    }
                }
            }
        }
    }
}