<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TeamProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="forms" runat="server">

    <!-- This form is a login form that will look in the sql database to verify if a user has logged in correctly-->
     <form method="POST" runat="server">
    <div class="col-md-6">  
  
         <div class="form-group">
           
        <label class="control-label" for="usernameTextBox">Username</label>
        <asp:TextBox runat="server" Cssclass="form-control" ID="usernameTextBox" placeholder="username" required="true"></asp:TextBox> 
    
         <label class="control-label" for="passwordTextBox">password</label>
        <asp:TextBox runat="server" TextMode="password" Cssclass="form-control" ID="passwordTextBox" placeholder="password" required="true"></asp:TextBox> 
             </div>
          <div class="form-group">
          </div>

         <div class="form-group">
                  
              </div>
        <div class="text-right">
            <a class="btn btn-warning btn-lg" ID="CancelButton" Text="Cancel" href="home.aspx" />
                   <asp:Button  CssClass="btn btn-warning btn-lg" ID="Cancel" Text="Cancel" runat="server" />
             </div>
        <div class="text-left">
            <a class="btn btn-warning btn-lg" ID="SubmitButtonText" Text="Send" href="home.aspx" />
                   <asp:Button  CssClass="btn btn-primary btn-lg" ID="SubmitButton" Text="Submit" runat="server" />
    </div>
        </div>
  </form>
 
  


</asp:Content>
