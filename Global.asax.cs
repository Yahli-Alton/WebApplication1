using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["uName"] = "guest";
            Session["userFName"] = "guest";
            Session["Admin"] = "False";
        }
        void Session_End(object sender, EventArgs e)
        {
            Session["uName"] = "guest";
            Session["userFName"] = "guest";
            Session["Admin"] = "False";
        }
    }
}