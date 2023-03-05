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
            string fileName = "usersDB.mdf";
            uName = Session["uName"].ToString();
            string user = Session["user"].ToString();
            if (uName == "guest") Response.Redirect("CountriesMainPage.aspx");
            sqlSelect = "SELECT * FROM usersTBI WHERE uName = '" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            int length = table.Rows.Count;
            if (length != 1) msg = "User Not found";
            else
            {
                fName = table.Rows[0]["fName"].ToString();
                lName = table.Rows[0]["lName"].ToString();
                email = table.Rows[0]["email"].ToString();
                prefix = table.Rows[0]["prefix"].ToString();
                phone = table.Rows[0]["phone"].ToString();
                gender = table.Rows[0]["gender"].ToString();
                int yearBorn = table.Rows[0]["yearBorn"];
                bool LikePlayingVideoGames = table.Rows[0]["LikePlayingVideoGames"];        
                bool LikeTraveling = table.Rows[0]["LikeTraveling"];
                bool LikeStudy = table.Rows[0]["LikeStudy"];
                bool LikeToSleep = table.Rows[0]["LikeToSleep"];
                bool LikeToProgaram = table.Rows[0]["LikeToProgaram"];


            }

        }
    }
}