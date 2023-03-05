using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class updateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";

        public string yBorn = "";
        public string uName, fName, lName, email, prefix, phone, gender, pw, country, city;
        public bool LikePlayingVideoGames, LikeTraveling, LikeStudy, LikeToSleep, LikeToProgram;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "DatabaseOfCountries2.mdf";
            uName = Session["uName"].ToString();
            if (uName == "guest") Response.Redirect("CountriesMainPage.aspx");
            sqlSelect = "SELECT * FROM usersTBl WHERE userName = '" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length != 1) msg = "User Not found";
            else
            {
                fName = table.Rows[0]["firstName"].ToString();
                lName = table.Rows[0]["LastName"].ToString();
                email = table.Rows[0]["email"].ToString();
                prefix = table.Rows[0]["prefix"].ToString();
                phone = table.Rows[0]["phone"].ToString();
                gender = table.Rows[0]["gender"].ToString();
                country = table.Rows[0]["country"].ToString();
                city = table.Rows[0]["city"].ToString();
                pw = table.Rows[0]["pw"].ToString();
                int yearBorn = Convert.ToInt32(table.Rows[0]["YearBorn"]);
                yBorn = yearBorn.ToString();
                LikePlayingVideoGames = (bool)table.Rows[0]["LikePlayingVideoGames"];
                LikeTraveling = (bool)table.Rows[0]["LikeTraveling"];
                LikeStudy = (bool)table.Rows[0]["LikeStudy"];
                LikeToSleep = (bool)table.Rows[0]["LikeToSleep"];
                LikeToProgram = (bool)table.Rows[0]["LikeToProgaram"];

            }

        }
    }
}