using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

      using (DefaultConnection db = new DefaultConnection())

                {

                tracker newtracker = new tracker();


                newtracker.day_played = radiolistdate.Text;
                newtracker.day_played = weekPlayedTextBox.Text;
                newtracker.day_played = who_won.Text;
                newtracker.day_played = PointsTextBox.Text;


                db.tracker.add(newtracker);


                db.SaveChanges();
                Response.Redirect("~/Home.aspx");
            }


        }





    }
}