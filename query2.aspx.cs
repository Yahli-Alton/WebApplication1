using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class query2 : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";

        public string sqlSelect = "select UserName,FirstName,email from usersTBl";

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "DatabaseOfCountries2.mdf";
            string tableName = "usersTBI";


            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);


            int length = table.Rows.Count;
            if (length == 0) msg = "no users";
            else
            {
                st += "<tr class = Users>";
                st += "<th class = Users>User Name</th>";
                st += "<th class = Users>First Name</th>";
                st += "<th class = Users>Email</th>";

            }
            for (int i = 0; i < length; i++)
            {
                st += "<tr class = Users>";
                st += "<td class = Users>" + table.Rows[i]["UserName"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["FirstName"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["email"] + "</td>";
            }
        }
    }
}