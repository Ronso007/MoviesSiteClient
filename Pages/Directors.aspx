<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Directors.aspx.cs" Inherits="Pages_Directors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Directors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class=" jumbotron">
            <h3>Here you can see all the Directors</h3>
        </div>

    <asp:GridView CssClass="table-striped table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
            <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
            <asp:BoundField DataField="MovieGenre" HeaderText="MovieGenre" SortExpression="MovieGenre" />
        </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Director],[MovieName], [MovieGenre] FROM [Movies]"></asp:SqlDataSource>
</asp:Content>

