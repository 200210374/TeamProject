using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Data;
using System.Data.SqlClient;

using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;

namespace TeamProject
{
    public partial class register_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        public string GetConnectionString()
        {
         
            return System.Configuration.ConfigurationManager.ConnectionStrings["sqlDataConnectionString"].ConnectionString;


        }




        protected void SaveButton_Click(object sender, EventArgs e)
        {



           //This is used for the next method to grab user input
            SaveUser(usernameTextBox.Text,
                              passwordTextBox.Text,
                              emailTextBox.Text);
                              


        }
        //This method makes an array 
        private void SaveUser(string username, string password, string email)
        {
           

            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO Users (username, Password, email) VALUES "
                        + " (@username,@Password,@email)";

            try
            {
                conn.Open();

                //I created an array that will hold the values made by the user. After the user clicks submit it will put it into the database.
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[3];
                


                param[0] = new SqlParameter("@username", SqlDbType.Char, 50);
                param[1] = new SqlParameter("@password", SqlDbType.Char, 15);
                param[2] = new SqlParameter("@email", SqlDbType.Char, 10);


                param[0].Value = username;
                param[1].Value = password;
                param[2].Value = email;



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





    }

       

    }


 