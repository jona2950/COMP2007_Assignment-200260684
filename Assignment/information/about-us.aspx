<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="Assignment.about.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="nav navbar-default">
        <ul class="nav navbar-nav">
            <li><a href="/information/about-us.aspx">About Us</a></li>
            <li><a href="/information/contact-us.aspx">Contact Us</a></li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>About Us</h1>
    <div class="well">
        <p class="active">
            Our names are Connor Hall, Johnathon Fachola. Computer porgrammer students at Georgian College.
            We made this program as an assignment in our enterprise computing class.
        </p>
    </div>
</asp:Content>
