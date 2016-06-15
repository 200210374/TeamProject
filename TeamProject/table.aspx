<%@ Page Title="" Language="C#" MasterPageFile="~/GameTracker.Master" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="TeamProject.table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <div class="row">
           <div class="col-md-offset-2 col-md-8">
               <h1>game tracker</h1>
               <a href="default.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add game</a>
                <asp:GridView ID="trackerGridView" cssClass="table table-bordered table-striped table-hover"  runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:BoundField DataField="day_played" HeaderText="day_palyed" visible="true" />
                      <asp:BoundField DataField="week_played" HeaderText="week_played" visible="true" />
                      <asp:BoundField DataField="who_won" HeaderText="who_won" visible="true" />
                      <asp:BoundField DataField="points" HeaderText="points" visible="true" />
                   </Columns>
              </asp:GridView>


               </div>
           </div>

   </div>
    
    
    
    
    




</asp:Content>
