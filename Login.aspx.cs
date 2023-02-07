using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        public string st = "no data received";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                st += "<table dir = 'ltr' border = '1'>";
                st += "<tr><th colspan='2'>items received:</th></tr>";

                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string mail = Request.Form["email"];
                string hobby = Request.Form["hobies"];
                string yBorn = Request.Form["Year"];
                string gender = Request.Form["gender"];
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phoneNum"];
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
                if (LikePlayingVideoGames) st += "Playing Video Games, ";
                if (LikeStudy) st += "study, ";
                if (LikeToProgram) st += "Program";
                if (LikeToSleep) st += "sleep";
                if (LikeTraveling) st += "Traveling";
                st += "</table>";

            }
        }
    }
}