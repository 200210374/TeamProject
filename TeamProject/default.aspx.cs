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



    




        public string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["sqlDataConnectionString"].ConnectionString;


        }




        protected void SaveButton_Click(object sender, EventArgs e)
        {



            //This is used for the next method to grab user input
            //radiolistdate.text is dayplayed
            DatabaseInsert(day_played.Text,
                              weekPlayedTextBox.Text,
                              who_wonTextBox.Text,
                              PointsTextBox.Text,
                              TeamBTextBox.Text);
           



        }
        //This method makes an array 
        private void DatabaseInsert(string day_played, string week_played, string who_won, string points, string TeamBPoints)
        {


            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO tracker (day_played, week_played, who_won, points, TeamBPoints) VALUES "
                        + " (@day_played, @week_played, @who_won, @points, @TeamBPoints)";

            try
            {
                conn.Open();

                //I created an array that will hold the values made by the user. After the user clicks submit it will put it into the database.
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[5];



                param[0] = new SqlParameter("@day_played", SqlDbType.Char, 10);
                param[1] = new SqlParameter("@week_played", SqlDbType.Char, 10);
                param[2] = new SqlParameter("@who_won", SqlDbType.Char, 10);
                param[3] = new SqlParameter("@points", SqlDbType.Int, 10);
                param[4] = new SqlParameter("@TeamBPoints", SqlDbType.Int, 10);

                param[0].Value = day_played;
                param[1].Value = week_played;
                param[2].Value = who_won;
                param[3].Value = points;
                param[4].Value = TeamBPoints;



                for (int x = 0; x < param.Length; x++)
                {
                    cmd.Parameters.Add(param[x]);
                }


                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }















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
