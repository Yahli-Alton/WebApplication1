using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Survey : System.Web.UI.Page
    {
        public string str = "";
        public string survay = "";
        double MAX_WIDTH = 1300;
        protected void Page_Load(object sender, EventArgs e)
        {
            string ans = Request.Form["surv"];
            if (Session["uName"].ToString() == "guest")
            {
                survay += "<h2>you must be logged in to vote</h2>";
                Response.Redirect("CountriesMainPage.aspx");
            }
            else if (Session["voted"].ToString() == "true")
                survay += "<h2>you can vote only one time</h2>";
            else
            {


                if (ans == "1")
                {
                    Application["q1"] = (int)Application["q1"] + 1;
                    Session["voted"] = "true";
                }
                if (ans == "2")
                {
                    Application["q2"] = (int)Application["q2"] + 1;
                    Session["voted"] = "true";
                }
                if (ans == "3")
                {
                    Application["q3"] = (int)Application["q3"] + 1;
                    Session["voted"] = "true";
                }
                if (ans == "4")
                {
                    Application["q4"] = (int)Application["q4"] + 1;
                    Session["voted"] = "true";
                }


            }
            survay += "<h1>survey results</h1>";

            int[] s = {(int)Application["q1"], (int)Application["q2"],(int)Application["q3"],(int)Application["q4"]};

            int max = Max(s);
            double width = 1;
            if (max != 0) width = MAX_WIDTH / max;
            double[] w = new double[4];
            for (int i = 0; i < w.Length; i++)
            {
                w[i] = s[i] * width;
            }
            string[] colors = {"blue", "red", "green", "yellow"};
            string[] countries = {"Israel", "USA", "UK", "France"};
            for (int i = 0; i < s.Length; i++)
            {
                if (w[i] < 20) survay += $"<div style='width:{w[i]}px; background-color:{colors[i]};'>{countries[i]}</div><br/>";
                else survay += $"<div style='width:{w[i]}px; background-color:{colors[i]};'>{countries[i]} - {s[i]}</div><br/>";
                str += $"s{i} = {s[i]} ";
            }
            // survay += "<table border = '1' dir = 'ltr'>";
            // survay += "<tr><td align = 'center'> I </td>"

        }

        private int Max(int[] s)
        {
            int max = s[0];
            for (int i = 0; i < s.Length; i++)
            {
                if (s[i] > max) max = s[i];
            }
            return max;
        }
    }
}