<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<dev style = "margin: 0px auto; text-align: center">
<form method ="post" runat ="server">
    <h3>Login Page</h3>
    <table style = "margin: 0px auto; text-align: center">
        <tr>
            <td>User Name</td>
            <td><input type =" "text" name = "uName" id = "uName" /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type = "password" name ="pw" id ="pw"</td>
        </tr>
        <tr>
            <td colspan ="2" style =" "text-align: center;">
            <input type ="submit" name ="submit" value ="  submit   " /></td>
        </tr>
    </table>
</form>


    <h1><% =msg %></h1>
</dev>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

</asp:Content>
