using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string loginMsg;
        public string LoginMsg2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "Hello, " + Session["userFName"].ToString();
            if (Session["uName"] == "guest") {
                loginMsg2 += "[<a href = 'login.aspx'>login</a>]<br />";
                loginMsg2 += "[<a href = 'register.aspx'>register</a>]";
                
            }
            else {
                loginMsg2 += "[><a href = 'update.aspx'>update profile</a>]<br />";
                loginMsg2 += "[<a href = 'logout.aspx'>logout</a>]";
            }
        }
    }
}