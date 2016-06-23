<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="TeamProject.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="forms" runat="server">
      
    
    <form runat="server" >
    


           <h1>Logout?</h1>

        <asp:Button  CssClass="btn btn-primary btn-lg" href="home.aspx" ID="SubmitButton" Text="Yes" runat="server" onclick="Yes_Click" />
       <asp:Button  CssClass="btn btn-warning btn-lg" ID="No" Text="No" runat="server" href="Default.aspx" UseSubmitBehavior="false" CausesValidation="false" onclick="No_Click" />


                   

        
    </form>

</asp:Content>
