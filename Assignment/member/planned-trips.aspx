<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="planned-trips.aspx.cs" Inherits="Assignment.profile.planned_trips" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="nav navbar-default">
        <ul class="nav navbar-nav">
            <li><a href="/member/profile.aspx">Profile</a></li>
            <li><a href="/member/profile-edit.aspx">profile Edit</a></li>
            <li><a href="/member/success-trips.aspx">Success Trips</a></li>
            <li><a href="/member/planned-trips.aspx">Planned Trips</a></li>
            <li><a href="/member/suggestions.aspx">Suggestions</a></li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
