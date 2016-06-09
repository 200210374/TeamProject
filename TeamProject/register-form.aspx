<%@ Page Title="Register" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="register-form.aspx.cs" Inherits="TeamProject.register_form" %>




<asp:Content ID="Content2" ContentPlaceHolderID="forms" runat="server">
       <link href="Content/cssStyleSheet.css" rel="stylesheet" />
          <!-- Register form -->
    
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
