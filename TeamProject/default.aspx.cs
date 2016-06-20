using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TeamProject
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cancel_Click(object sender, EventArgs e)

        {
            Response.Redirect("~/Home.aspx");

        }


  
        protected void Button1_Click(object sender, EventArgs e)

        {


           
            /*
                //connect to the server
                using (DefaultConnection con = new DefaultConnection())

                {

                tracker newtracker = new tracker();

                // I am greatly confused because I followed the youtube playlist exactly for this and im getting errors.
                newtracker.day_played = radiolistdate.Text;
                newtracker.week_played= weekPlayedTextBox.Text;
                newtracker.who_won = who_won.Text;
                newtracker.Points = PointsTextBox.Text;
                newtracker.TeamBpoints = TeamBpoints.TextBox;

                con.tracker.add(newtracker);


                con.SaveChanges();
                Response.Redirect("~/Home.aspx"); 
            }
            */

        }
        




    }
}