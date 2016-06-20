<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TeamProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="forms" runat="server">

  
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate"></asp:Login>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlDataConnectionString %>" InsertCommand="INSERT INTO Users (username, password, email)
VALUES ('New','Test','new@yahoo.ca'); " SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

</asp:Content>