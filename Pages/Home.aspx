<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron text-center" style="background-color:aliceblue">
        <h1>Movies Database</h1>
        <p class="lead">This is a Movies Database site. you will find Directors, Actors and more...</p>
    </div>
    <div class="row marketing">
        <div class="col-lg-6">
            <h3 style="color:pink">The Best</h3>
            <p>You Can See The Best Movies!</p>

            <h3 style="color:dodgerblue">Information</h3>
            <p>You Can see information on your favorite Movies Such as Actors, Directors And Description!.</p>

            <h3 style="color:darkorange">Control Panel</h3>
            <p>As an admin you can Control almost Everything in this site!</p>
        </div>

        <div class="col-lg-6">
            <h3 style="color:springgreen">Register And Login</h3>
            <p>You can Register and Login, Of course you can Edit your Personal Information as well!</p>

            <h3 style="color:thistle">Rating And Reviews</h3>
            <p>As a Member You Can Rate and review Every Movie You Saw!</p>
            
            <h3 style="color:darkblue">And More!</h3>
            <p>Just Explore The Site!</p>
        </div>
    </div>

</asp:Content>

