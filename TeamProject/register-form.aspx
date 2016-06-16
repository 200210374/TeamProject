<%@ Page Title="Register" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="register-form.aspx.cs" Inherits="TeamProject.register_form" %>




<asp:Content ID="Content2" ContentPlaceHolderID="forms" runat="server">
       <link href="Content/cssStyleSheet.css" rel="stylesheet" />
    <!--THis code will be used to register user input to the database-->
 <!--   @{
    Validation.RequireField("username", "You must enter a username");
    Validation.RequireField("password", "password is required");
    Validation.RequireField("email", "You haven't entered a email");

    var username = "";
    var password = "";
    var email = "";

    if(IsPost && Validation.IsValid()){
       username = Request.Form["username"];
       password = Request.Form["password"];
      email = Request.Form["email"];

       var db = Database.Open("tracker");
       var insertCommand = "INSERT INTO tacker () Values()";
       db.Execute(insertCommand, username, password, email);
       Response.Redirect("~/Home.aspx");
    }
}  -->

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Register User</title>
</head>
<body>
          <!-- Register form -->
    <!--When finished it will send data to the sql database and save it-->
    
      <form method="POST" runat="server">
    <div class="col-md-6">  
  
         <div class="form-group">
           
        <label class="control-label" for="usernameNameTextBox">username</label>
        <asp:TextBox runat="server" Cssclass="form-control" ID="usernameTextBox" placeholder="username" required="true"></asp:TextBox> 
    
                 </div>
        
         <div class="form-group">
        <label class="control-label" for="passwordTextBox">password</label>
        <asp:TextBox runat="server" TextMode="email" Cssclass="form-control" ID="passwordTextBox" placeholder="password" required="true"></asp:TextBox> 

                   <div class="form-group">
        <label class="control-label" for="emailTextBox">email</label>
        <asp:TextBox runat="server" TextMode="email" Cssclass="form-control" ID="emailTextBox" placeholder="email" required="true"></asp:TextBox> 
             
          <div class="form-group">
          </div>

         <div class="form-group">
        <asp:TextBox runat="server" TextMode="MultiLine" Columns="12" Rows="12" Cssclass="form-control" ID="MessageTextBox" placeholder="Your message goes here" required="true"></asp:TextBox> 
               
              </div>
        <div class="text-left">
            
                   <asp:Button  CssClass="btn btn-warning btn-lg" ID="Cancel" Text="Cancel" href="home.aspx" runat="server" />
             </div>
        <div class="text-right">
          
                   <asp:Button  CssClass="btn btn-primary btn-lg" ID="SubmitButton" Text="Submit" href="home.aspx" runat="server" />
    </div>
        </div>
             </div>
        </div>
  </form>
 </body>
    </html>

  
</asp:Content>
