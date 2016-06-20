using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Data;
using System.Data.SqlClient;


namespace TeamProject
{
    public partial class register_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text;
            string password = passwordTextBox.Text;
            string email = emailTextBox.Text;
            SqlConnection con = new SqlConnection
          ("Data Source=.;Initial Catalog = sqlDataEntities;Trusted_Connection=true;");
            SqlCommand com = new SqlCommand();

            try
            {

                con.Open();
                // Create a object of SqlCommand class
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "spInsertUser"; //Stored Procedure Name

                com.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;
                com.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;
                com.Parameters.Add("@email", SqlDbType.Char).Value = email;
   
                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
         

            }
        }

    

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }


    }
}