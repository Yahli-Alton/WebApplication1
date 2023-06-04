using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        public string st = "no data received";
        public string sqlMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                st += "<table dir = 'ltr' border = '1'>";
                st += "<tr><th colspan='2'>items received:</th></tr>";

                string fileName = "DatabaseOfCountries2.mdf";
                string tableName = "usersTBl";


                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string mail = Request.Form["email"];
                string hobby = Request.Form["hobies"];
                string yBorn = Request.Form["Year"];
                string gender = Request.Form["gender"];
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phoneNum"];
                string country = Request.Form["country"];
                string city = Request.Form["city"];
                string pw = Request.Form["ps"];
                bool LikePlayingVideoGames = false;
                bool LikeTraveling = false;
                bool LikeStudy = false;
                bool LikeToSleep = false;
                bool LikeToProgram = false;
                if (hobby != null)
                {
                    LikePlayingVideoGames = hobby.Contains('1');
                    LikeTraveling = hobby.Contains('2');
                    LikeStudy = hobby.Contains('3');
                    LikeToSleep = hobby.Contains('4');
                    LikeToProgram = hobby.Contains('5');
                }
                // string gender = Request.Form["gender"];
                // int year = int.Parse(Request.Form["Year"]);

                // string[] hobbies = Request.Form.GetValues("hobbies");


                st += "<tr><td>user name: </td><td> " + uName + "</td></tr>";
                st += "<tr><td>first name: </td><td>" + fName + "</td></tr>";
                st += "<tr><td>last name: </td><td>" + lName + "</td></tr>";
                st += "<tr><td>email: </td><td>" + mail + "</td></tr>";
                st += "<tr><td>Year Born: </td><td>" + yBorn + "</td></tr>";
                st += "<tr><td>gender: </td><td>" + gender + "</td></tr>";
                st += "<tr><td>phone: </td><td>" + prefix + "-" + phone + "</td></tr>";
                // st += "<tr><td>gender: </td><td>" + gender + "</td></tr>";
                st += "<tr><td>hobbies: </td><td>";
                int Play = 0;
                int study = 0;
                int sleep = 0;
                int travel = 0;
                int program = 0;
                if (LikePlayingVideoGames) { st += "Playing Video Games, "; Play = 1; }
                if (LikeStudy) { st += "study, "; study = 1; }
                if (LikeToProgram) { st += "Program"; program = 1; }
                if (LikeToSleep) { st += "sleep"; sleep = 1; }
                if (LikeTraveling) { st += "Traveling"; travel = 1; }
                st += "</table>";

                //---if the user name is exist?
                string sqlSelect = $"SELECT * FROM {tableName} WHERE UserName = '{uName}'";

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    st = "user name has been taken";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"INSERT INTO {tableName}" +
                        $" VALUES ('{uName}', '{fName}', '{lName}', '{mail}', {yBorn}, '{gender}', '{prefix}', '{phone}', '{country}', '{city}', " +
                        $"{Play}, {travel}, {study}, {sleep}, {program}, '{pw}')";
                    st += sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    st += " Succses";
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();
                    Session["uName"] = uName;
                    Session["userFName"] = fName;
                    Response.Redirect("CountriesMainPage.aspx");
                }
            }
        }
    }
}