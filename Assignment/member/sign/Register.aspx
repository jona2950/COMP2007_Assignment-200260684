<%@ Page Title="" Language="C#" MasterPageFile="~/TravelPlanner.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment.member.sign.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAnnounce" runat="server">
    <h1>Register</h1>
    <h6>All fields are required</h6>

    <div class="form-group-lg">
        <asp:label id="lblStatus" runat="server" cssclass="label label-info" />
    </div>

    <div class="form-group">
        <label for="txtUsername" class="col-sm-2">Username:</label>
        <asp:textbox id="txtUsername" runat="server" />
    </div>
    <div class="form-group">
        <label for="txtPassword" class="col-sm-2">Password:</label>
        <asp:textbox id="txtPassword" runat="server" textmode="password" />
    </div>
    <div class="form-group">
        <label for="txtConfirm" class="col-sm-2">Confirm:</label>
        <asp:textbox id="txtConfirm" runat="server" textmode="password"></asp:textbox>
        <asp:comparevalidator runat="server" controltovalidate="txtPassword" controltocompare="txtConfirm"
            operator="Equal" errormessage="Passwords must match" cssclass="label label-danger" />
    </div>
    <div class="col-sm-offset-2">
        <asp:button id="btnRegister" runat="server" text="Register" cssclass="btn btn-primary" 
            OnClick="btnRegister_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
