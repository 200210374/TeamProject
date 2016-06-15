<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="TeamProject.WebUserControl1" %>




<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- Navbar -->
        <!--This creates a bar with links to differnet pages-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-Left">
                <li id="home" runat="server"><a href="Home page.aspx"><i class="fa fa-home fa-lg"></i>Home Page</a></li>
                <li id="register" runat="server"><a href="register-form.aspx"><i class="fa-fa-login fa-lg"></i>Register</a></li>
                <li id="login" runat="server"><a href="Login.aspx"><i class="fa fa-login fa-lg"></i>Login</a></li>
                <li id="edit" runat="server"><a href="edit.aspx"><i class="fa-fa-login fa-lg"></i>Edit account</a></li>
                <li id="logout" runat="server"><a href="Logout.aspx"><i class="fa fa-logout fa-lg"></i>Logout</a></li>
                     <li id="tracker" runat="server"><a href="default.aspx"><i class="fa fa-tracker fa-lg"></i>Game Tracker</a></li>

                
                  
            </ul>
        </div>
    </div>
</nav>
