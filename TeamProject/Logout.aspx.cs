﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Yes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void No_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}