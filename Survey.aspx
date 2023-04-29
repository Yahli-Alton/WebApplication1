<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="WebApplication1.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class= marginLeft>
<h1 class="auto-style1"><strong>Survey</strong></h1>
<form runat="server">
    <table class = "tableIn" border = "1">
        <tr><th style = "text-align: center;" colspan ="2"> What is the best country? </th></tr>
        <tr> 
            <td class = "td1"> Israel </td>
            <td><input type = "radio" name = "surv" value = "1" checked="true" /></td>
        </tr>
        <tr>
            <td class = "td1"> USA </td>
            <td><input type = "radio" name = "surv" value = "2" /></td>
        </tr>
        <tr>
            <td class = "td1"> UK </td>
            <td><input type = "radio" name = "surv" value = "3" /></td>
        </tr>
        <tr>
            <td class = "td1"> France </td>
            <td><input type = "radio" name = "surv" value = "4" /></td>
        </tr>
        <tr>
            <td sytle = "text-align: center;" colspan = "2">
                &nbsp;<input type = "submit" name = "send" value = "send" /></td>
        </tr>
    </table>
</form>
<%= survay %>

<a href = 'countriesMainPage.aspx'>Main Page</a>
    </div>
</asp:Content>
