<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Actors.aspx.cs" Inherits="Pages_Actors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Actors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class=" jumbotron">
            <h3>Here you can see all the Actors</h3>
        </div>
        <asp:GridView CssClass="table-striped table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ActorID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ActorID" HeaderText="ActorID" InsertVisible="False" ReadOnly="True" SortExpression="ActorID" />
                <asp:BoundField DataField="ActorName" HeaderText="ActorName" SortExpression="ActorName" />
            </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [GetAllActors]"></asp:SqlDataSource>
</asp:Content>

