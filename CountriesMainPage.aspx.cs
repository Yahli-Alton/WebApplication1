using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == "True")
                msg += "<a href='Users.aspx'>Users</a>";
            if (Session["uName"] == "guest")
                msg += "<a href = 'Login.aspx' > Log in</a>";
            else msg += "<a href = 'Logout.aspx' > Log out</a>";
        }
    }
}