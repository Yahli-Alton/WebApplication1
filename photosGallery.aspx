<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="PhotosGallery.aspx.cs" Inherits="WebApplication1.PhotosGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center><h1 style="margin: 0px auto">Photos Gallery</h1></center>

<table style="margin: 0px auto;">
    <tr>
        <td><img class="imgCell" src = "Images/p11.svg" onmouseover="picShow('Images/p11.svg')"/></td>
        <td><img class="imgCell" src = "Images/p12.svg" onmouseover="picShow('Images/p12.svg')"/></td>
        <td><img class="imgCell" src = "Images/p13.svg" onmouseover="picShow('Images/p13.svg')"/></td>
        <td><img class="imgCell" src = "Images/p14.svg" onmouseover="picShow('Images/p14.svg')"/></td>
    </tr>
    <tr></tr>
    <tr>
        <td><img class="imgCell" src = "Images/p21.svg" onmouseover="picShow('Images/p21.svg')"/></td>
        <td rowspan = "2" colpsan = "2">
            <img class="BigPicImg" id="bigPic" src="Images/p11.svg"/>
        </td>
        <td><img class="imgCell" src = "Images/p24.svg" onmouseover="picShow('Images/p24.svg')"/></td>
    </tr>
    <tr></tr>
    <tr>
        <td><img class="imgCell" src = "Images/p31.svg" onmouseover="picShow('Images/p31.svg')"/></td>
        <td><img class="imgCell" src = "Images/p34.svg" onmouseover="picShow('Images/p34.svg')"/></td>
    </tr>
    <tr></tr>
    <tr>
        <td><img class="imgCell" src = "Images/p41.svg" onmouseover="picShow('Images/p41.svg')"/></td>
        <td><img class="imgCell" src = "Images/p42.svg" onmouseover="picShow('Images/p42.svg')"/></td>
        <td><img class="imgCell" src = "Images/p43.svg" onmouseover="picShow('Images/p43.svg')"/></td>
        <td><img class="imgCell" src = "Images/p44.svg" onmouseover="picShow('Images/p44.svg')"/></td>
    </tr>
</table>

<br /><br /><br /><br /><br /><br /><br /><br />


<script>
    function picShow(picSrc) {
        bigPic.src = picSrc;
    }
</script>
</asp:Content>
