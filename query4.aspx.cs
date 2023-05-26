using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class query4 : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";

        public string sqlSelect = "select *from usersTBl where LastName like 'a%'";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == "False") Response.Redirect("CountriesMainPage.aspx");
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
                st += "<th class = Users>Last Name</th>";
                st += "<th class = Users>Email</th>";
                st += "<th class = Users>Year Born</th>";
                st += "<th class = Users>Gender</th>";
                st += "<th class = Users>Prefix</th>";
                st += "<th class = Users>Phone</th>";
                st += "<th class = Users>Country</th>";
                st += "<th class = Users>City</th>";
                st += "<th class = Users>Like Playing Video Games?</th>";
                st += "<th class = Users>Like Traveling?</th>";
                st += "<th class = Users>Like Study</th>";
                st += "<th class = Users>Like To Sleep?</th>";
                st += "<th class = Users>Like To Program?</th>";
                st += "<th class = Users>Password</th>";

            }
            for (int i = 0; i < length; i++)
            {
                st += "<tr class = Users>";
                st += "<td class = Users>" + table.Rows[i]["UserName"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["FirstName"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LastName"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["email"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["YearBorn"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["gender"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["prefix"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["phone"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["country"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["city"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LikePlayingVideoGames"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LikeTraveling"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LikeStudy"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LikeToSleep"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["LikeToProgaram"] + "</td>";
                st += "<td class = Users>" + table.Rows[i]["pw"] + "</td>";
            }

        }
    }
}