<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="in.aspx.cs" Inherits="Assignment.member.sign._in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAnnounce" runat="server">
    <h1>Login</h1>

    <div>
        <asp:Label ID="lblStatus" runat="server" CssClass="label label-danger" />
    </div>

    <div class="form-group">
        <label for="txtUsername" class="col-sm-2">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" />
    </div>
    <div class="form-group">
        <label for="txtPassword" class="col-sm-2">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
    </div>
    <div class="well-sm">
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary"
             OnClick="btnLogin_Click" />
    </div>
    <div class="well-sm arrow">
        <asp:Button ID="btnRegister" runat="server" Text="Need to Register?" CssClass="btn btn-primary"
             OnClick="btnRegister_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
