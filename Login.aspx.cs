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
        public string st = "h";
        public int count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            count++;
            if (Request.Form["submit"] != null)
            {
                st += "<table dir = 'ltr' border = '1'>";
                st += "<tr><th colspan='2'>items received:</th></tr>";

                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string mail = Request.Form["email"];
                // string gender = Request.Form["gender"];
                // int year = int.Parse(Request.Form["Year"]);

                // string[] hobbies = Request.Form.GetValues("hobbies");
                

                st += "<tr><td>user name: </td><td> " + uName + "</td></tr>";
                st += "<tr><td>first name: </td><td>" + fName + "</td></tr>";
                st += "<tr><td>last name: </td><td>" + lName + "</td></tr>";
                st += "<tr><td>email: </td><td>" + mail + "</td></tr>";
                // st += "<tr><td>gender: </td><td>" + gender + "</td></tr>";

                st += "</table>";

            }
            else
            {
                st = "no data received" + count.ToString();
            }
        }
    }
}