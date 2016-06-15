<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TeamProject._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="forms" runat="server">



   
           

<!DOCTYPE html>
<html>
<body>
    <!--THis form is used to track the game and then sends it to the sql database -->
<form runat="server">
    <div><h2>Day played?</h2>
    <asp:RadioButtonList id="radiolistdate" align="center" runat="server">
   <asp:ListItem selected="true">Monday</asp:ListItem>
   <asp:ListItem>Tuesday</asp:ListItem>
         <asp:ListItem>Wednesday</asp:ListItem>
         <asp:ListItem>Thursday</asp:ListItem>
         <asp:ListItem>Friday</asp:ListItem>
         <asp:ListItem>Saturday</asp:ListItem>
         <asp:ListItem>Sunday</asp:ListItem>
</asp:RadioButtonList></div>

 

     <label class="control-label"  for="weekPlayedTextBox" >Week played</label>
        <asp:TextBox runat="server" Cssclass="form-control" TextMode="Date" ID="weekPlayedTextBox" placeholder="week_played" required="true"></asp:TextBox> 


    <h2>Which team won?</h2>
<asp:RadioButtonList id="who_won" align="center" runat="server">
   <asp:ListItem selected="true">Team A</asp:ListItem>
   <asp:ListItem>Team B</asp:ListItem>
</asp:RadioButtonList>
    <h1>Points Scored</h1>
    <h2>Team A</h2>
    <label class="control-label"  for="PointsTextBox" ></label>
        <asp:TextBox runat="server" Cssclass="form-control" ID="PointsTextBox" placeholder="points" required="true"></asp:TextBox> 
    <h2>Team B</h2>
        <asp:TextBox runat="server" Cssclass="form-control" ID="TeamBTextBox" placeholder="TeamBpoints" required="true"></asp:TextBox> 
                

    <asp:Button  CssClass="btn btn-warning btn-lg" ID="cancel" Text="Cancel" runat="server"  UseSubmitBehavior="false" CausesValidation="false" onclick="cancel_Click" />

  <a class="btn btn-primary btn-lg" ID="SubmitButtonText" Text="Send" href="home.aspx" />
                   <asp:Button  CssClass="btn btn-primary btn-lg" ID="SubmitButton" Text="Submit" runat="server" onclick="Button1_Click" />

<p><asp:Label id="Label1" runat="server"/></p>
</form>

</body>
</html>
        


</asp:Content>














