﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication1.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class = Users>

<h3>Users Table</h3>
<h2><%= sqlSelect %></h2>
<table class = Users>
    <%= st %>

</table>

<h4><%= msg %></h4>

<br /><br /><br />
</div>
</asp:Content>