<%@ Page Title="" Language="C#" MasterPageFile="~/countries2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class = marginLeft>
    <a href="https://www.wikipedia.org/">Credit to Wikipedia</a>
    <br />
    <% =msg %>
    <ul>
        <li> <a href = "#israel">Israel</a></li>
        <li> <a href = "#uk">United Kingdom</a></li>
        <li> <a href = "#us">United States</a></li>
        <li> <a href = "#fr">France</a></li>
        <li> <a href = "#it">Italy</a></li>
    </ul>
    <img class="Fisrael" src="Images/Flag_of_Israel.svg" alt="W3Schools.com">
    <img class ="symbol" src="Images/Emblem_of_Israel.svg.png" alt="W3Schools.com">
    <h1 id = "uk">Israel</h1>
    <pre>
Israel, officially the State of Israel, is a country in Western Asia. It is situated on the southeastern shore of the 
Mediterranean Sea and the northern shore of the Red Sea, and shares borders with Lebanon to the north, Syria to the northeast, 
Jordan to the east, and Egypt to the southwest; it is also bordered by the Palestinian territories of the West Bank and the Gaza
Strip to the east and west, respectively. Tel Aviv is the economic and technological center of the country, while its seat of 
government is in its proclaimed capital of Jerusalem, although Israeli sovereignty over East Jerusalem is unrecognized.
    </pre>
    <a href="Israel.aspx">Read more</a>
    <img class = "F-UK-FR-IT" src="Images/Flag_of_the_United_Kingdom.svg">
    <img class = "symbol" src="Images/Royal_Coat_of_Arms_of_the_United_Kingdom.svg.png">
    <h1 id = "us">United Kingdom</h1>
    
    <pre>
The United Kingdom of Great Britain and Northern Ireland, commonly known as the United Kingdom or Britain, 
is a sovereign country in Europe, off the north-western coast of the continental mainland. It comprises England, Wales, Scotland, 
and Northern Ireland. The United Kingdom includes the island of Great Britain, the north-eastern part of the island of Ireland, 
and many smaller islands within the British Isles. Northern Ireland shares a land border with the Republic of Ireland; otherwise, 
the United Kingdom is surrounded by the Atlantic Ocean, the North Sea, the English Channel, the Celtic Sea and the Irish Sea.
The total area of the United Kingdom is 242,495 square kilometres, with an estimated 2020 population of more than 67 million people.
    </pre>
    <a href="UK.aspx">Read more</a>
    <img class = "FUS" src="Images/Flag_of_the_United_States.svg">
    <img class = "symbol" src="Images/Greater_coat_of_arms_of_the_United_States.svg.png">
    <h1 id = "fr">United States</h1>
    <pre>
The United States of America, commonly known as the United States (U.S. or US) or America, is a transcontinental country
located primarily in North America. It consists of 50 states, a federal district, five major unincorporated territories,
nine minor outlying islands,[j] and 326 Indian reservations. It is the third-largest country by both land and total area.
The United States shares land borders with Canada to its north and with Mexico to its south. It has maritime borders with
the Bahamas, Cuba, Russia, and other nations.[k] With a population of over 331 million,[e] it is the third most populous 
country in the world. The national capital is Washington, D.C., and the most populous city and financial center is New York City.
    </pre>
    <a href="US.aspx">Read more</a>
    <img class = "F-UK-FR-IT" src="Images/Flag_of_France.svg">
    <img class = "symbol" src="Images/Armoiries_république_française.svg.png">
    <h1 id = "it">France</h1>
    <pre>
France, officially the French Republic, is a transcontinental country predominantly located in Western Europe and spanning
overseas regions and territories in the Americas and the Atlantic, Pacific and Indian Oceans.[XII] Its metropolitan area
extends from the Rhine to the Atlantic Ocean and from the Mediterranean Sea to the English Channel and the North Sea; 
overseas territories include French Guiana in South America, Saint Pierre and Miquelon in the North Atlantic, the French 
West Indies, and many islands in Oceania and the Indian Ocean. Due to its several coastal territories, France has the largest 
exclusive economic zone in the world. France borders Belgium, Luxembourg, Germany, Switzerland, Monaco, Italy, Andorra, 
and Spain in continental Europe, as well as the Netherlands, Suriname, and Brazil in the Americas via its overseas 
territories in French Guiana and Saint Martin.
</pre>
<a href="France.aspx">Read more</a>
<img class = "F-UK-FR-IT" src="Images/Flag_of_Italy.svg">
<img class = "symbol" src="Images/Emblem_of_Italy.svg.png">
<h1 id = "it">Italy</h1>
<pre>
Italy, officially the Italian Republic or the Republic of Italy, is a country that consists of a peninsula delimited by the Alps
and several islands surrounding it;[note 1] its territory largely coincides with the homonymous geographical region. 
Italy is located in the middle of the Mediterranean Sea, in Southern Europe; it is also considered part of Western Europe.
A unitary parliamentary republic with Rome as its capital and largest city, the country covers a total area of 301,230 km2 
and shares land borders with France, Switzerland, Austria, Slovenia and the enclaved microstates of Vatican City and San Marino. 
Italy has a territorial exclave in Switzerland, Campione. With over 60 million inhabitants, Italy is the third-most populous member 
state of the European Union.
</pre>
    <a href="Italy.aspx">Read more</a>
    <pre>



    </pre>
</div>



</asp:Content>
