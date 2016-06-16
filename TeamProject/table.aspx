<%@ Page Title="" Language="C#" MasterPageFile="~/register.Master" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="TeamProject.table" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form runat="server">
   <div class="container">
       <div class="row">
           <div class="col-md-offset-2 col-md-8">
               <h1>game tracker</h1>
              
          
                <asp:GridView ID="trackerGridView"  runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:BoundField DataField="day_played" HeaderText="day_played" visible="true" />
                      <asp:BoundField DataField="week_played" HeaderText="week_played" visible="true" />
                      <asp:BoundField DataField="who_won" HeaderText="who_won" visible="true" />
                      <asp:BoundField DataField="points" HeaderText="points" visible="true" />
                   </Columns>
              </asp:GridView>
                    <a href="default.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add game</a>


               </div>
           </div>

   </div>
    </form>
    
    
    
    




</asp:Content>
