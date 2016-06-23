using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;

using System.ComponentModel;
using System.Data;
using System.Drawing;

using System.Text;
using System.Data.Sql;
using System.Data.OleDb;
using System.Data.SqlClient;





namespace TeamProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection();

                con.ConnectionString = "Data Source=entreprise-class.database.windows.net;Initial Catalog=sqlData;User ID=brandonroycstn;Password=Silverlight1;MultipleActiveResultSets=True;Application Name=EntityFramework";
                con.Open();
                string username = usernameTextBox.Text;
                string password = passwordTextBox.Text;
                SqlCommand cmd = new SqlCommand("select username,password from Users where userid='" + usernameTextBox.Text + "'and password='" + passwordTextBox.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                con.Close();
                Response.Redirect("~/Home.aspx");
            }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
    }
