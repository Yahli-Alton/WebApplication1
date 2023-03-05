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
        public string uName, fName, lName, email, prefix, phone, gender, pw;
        public bool LikePlayingVideoGames, LikeTraveling, LikeStudy, LikeToSleep, LikeToProgaram;
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
                int yearBorn = Convert.ToInt32(table.Rows[0]["YearBorn"]);
                yBorn = yearBorn.ToString();
                bool LikePlayingVideoGames = (bool)table.Rows[0]["LikePlayingVideoGames"];        
                bool LikeTraveling = (bool)table.Rows[0]["LikeTraveling"];
                bool LikeStudy = (bool)table.Rows[0]["LikeStudy"];
                bool LikeToSleep = (bool)table.Rows[0]["LikeToSleep"];
                bool LikeToProgaram = (bool)table.Rows[0]["LikeToProgaram"];


            }

        }
    }
}