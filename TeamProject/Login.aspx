<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TeamProject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="forms" runat="server">

    <!--login form-->

    <form id="form1" runat="server">








    <asp:Label ID="username" runat="server" Text="username" align="center" class="control-label"  for="usernameTextBox"  ></asp:Label>
    <asp:TextBox ID="usernameTextBox" runat="server" align="center" required="true"></asp:TextBox>

    <asp:Label ID="password" runat="server" Text="password" align="center" class="control-label"  for="passwordTextBox" ></asp:Label>

       <asp:TextBox ID="passwordTextBox" runat="server" align="center" required="true"></asp:TextBox>


    <asp:Button ID="submit" CssClass="btn btn-primary btn-lg"  runat="server" Text="submit" OnClick="submit_Click" />
    <asp:Button ID="cancel" CssClass="btn btn-warning btn-lg" runat="server"  Text="cancel" OnClick="cancel_Click" />


        <!--this gridview shows the users that have made accounts. Its meant to test the register-form.aspx page-->

        <h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Align="center" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlDataConnectionString %>" SelectCommand="SELECT [username], [email] FROM [Users]"></asp:SqlDataSource>
            Users</h1>


        <asp:SqlDataSource ID="UsersGrid" runat="server" ConnectionString="<%$ ConnectionStrings:sqlDataConnectionString %>" SelectCommand="SELECT [username], [Id] FROM [Users]"></asp:SqlDataSource>





    </form>


        </asp:Content>


