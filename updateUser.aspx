<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="updateUser.aspx.cs" Inherits="WebApplication1.updateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class = marginLeft>
    <br />
    <a class = marginRight href="CountriesMainPage.aspx">Main page</a>
    
    <br />
    <h1>Update form</h1>
<form method="post" runat="server" onsubmit ="return chkForm();">
    <table>
        <tr>
            <td>User name</td> 
            <td><input type="text" id="uName" name="uName" disabled ="disabled" value = "<%= uName %>" /></td> 
            <td><input type ="text" id ="mUname" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr>
            <td>First name</td>
            <td><input type="text" id="fName" name="fName" value="<%= fName %>" /></td> 
            <td><input type ="text" id ="mFname" size = "30" class = "input" disabled = "disabled"/></td>
        </tr>
        <tr> 
            <td>Last name</td> 
            <td><input type="text" id="lName" name="lName" value="<%= lName %>" /></td> 
            <td><input type ="text" id ="mLname" size = "30" class = "input" disabled = "disabled"/></td>
        </tr>
        <tr> 
            <td>Email</td> 
            <td><input type="text" id="email" name="email" value ="<%=email %>"/></td> 
            <td><input type ="text" id ="mEmail" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr> 
            <td>Year Born</td> 
            <td><input type="text" id="Year" name="Year" value ="<%=yBorn %>" /></td> 
            <td><input type ="text" id ="mYear" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr> 
            <td>gender</td> 
            <td>
            <% if (gender == "male") { %>
                <input type="radio" id="gender" name="gender" value ="male" checked/>Male
                <input type="radio" id="gender" name="gender" value ="female"/>Female
            <% } else { %>
                <input type="radio" id="gender" name="gender" value ="male"/>Male
                <input type="radio" id="gender" name="gender" value ="female" checked/>Female 
            <% } %> </td>
        </tr>
        <tr> 
            <td>Phone</td> 
            <td dir ="ltr">
                <select name ="prefix" id ="prefix">
                    <% if (prefix == "054") { %>
                        <option value ="054" selected>054</option>
                    <% } else { %>
                        <option value ="054">054</option>
                    <% } %>
                    <% if (prefix == "050") { %>
                        <option value ="050" selected>050</option>
                    <% } else { %>
                        <option value ="050">050</option>
                    <% } %>
                    <% if (prefix == "051") { %>
                        <option value ="051" selected>051</option>
                    <% } else { %>
                        <option value ="051">051</option>
                    <% } %>
                    <% if (prefix == "052") { %>
                        <option value ="052" selected>052</option>
                    <% } else { %>
                        <option value ="052">052</option>
                    <% } %>
                    <% if (prefix == "053") { %>
                        <option value ="053" selected>053</option>
                    <% } else { %>
                        <option value ="053">053</option>
                    <% } %>
                    <% if (prefix == "055") { %>
                        <option value ="055" selected>055</option>
                    <% } else { %>
                        <option value ="055">055</option>
                    <% } %>
                    <% if (prefix == "056") { %>
                        <option value ="056" selected>056</option>
                    <% } else { %>
                        <option value ="056">056</option>
                    <% } %>
                    <% if (prefix == "057") { %>
                        <option value ="057" selected>057</option>
                    <% } else { %>
                        <option value ="057">057</option>
                    <% } %>
                    <% if (prefix == "058") { %>
                        <option value ="058" selected>058</option>
                    <% } else { %>
                        <option value ="058">058</option>
                    <% } %>
                    <% if (prefix == "059") { %>
                        <option value ="059" selected>059</option>
                    <% } else { %>
                        <option value ="059">059</option>
                    <% } %>
                    <% if (prefix == "01") { %>
                        <option value ="01" selected>01</option>    
                    <% } else { %>  
                        <option value ="01">01</option>
                    <% } %> 
                    <% if (prefix == "02") { %>
                        <option value ="02" selected>02</option>
                    <% } else { %>
                        <option value ="02">02</option>
                    <% } %> 
                    <% if (prefix == "03") { %>
                        <option value ="03" selected>03</option>
                    <% } else { %>  
                        <option value ="03">03</option>
                    <% } %>
                    <% if (prefix == "04") { %>
                        <option value ="04" selected>04</option>
                    <% } else { %>
                        <option value ="04">04</option>
                    <% } %> 
                    <% if (prefix == "05") { %>
                        <option value ="05" selected>05</option>
                    <% } else { %>
                        <option value ="05">05</option>
                    <% } %> 
                    <% if (prefix == "06") { %>
                        <option value ="06" selected>06</option>
                    <% } else { %>
                        <option value ="06">06</option>
                    <% } %>
                    <% if (prefix == "07") { %>
                        <option value ="07" selected>07</option>
                    <% } else { %>
                        <option value ="07">07</option>
                    <% } %>
                    <% if (prefix == "08") { %>
                        <option value ="08" selected>08</option>
                    <% } else { %>
                        <option value ="08">08</option>
                    <% } %>
                    <% if (prefix == "09") { %>
                        <option value ="09" selected>09</option>    
                    <% } else { %>
                        <option value ="09">09</option>
                    <% } %>
                </select>
                &nbsp;&nbsp; - &nbsp;&nbsp;
                <input type ="text" name ="phoneNum" id ="phoneNum" value = "<%= phone%>"/>
                <td><input type ="text" id ="mPhone" size = "30" class = "input" disabled = "disabled"/></td>
            </td>            

        </tr>
        <tr> 
            <td>country</td> 
            <td dir ="ltr">
                <select name ="country" id ="country">
                    <% if (country == "Israel") { %>
                        <option value ="Israel" selected>Israel</option>
                    <% } else { %>
                        <option value ="Israel">Israel</option>
                    <% } %>
                    <% if (country == "United Kingdom") { %>
                        <option value ="United Kingdom" selected>United Kingdom</option>
                    <% } else { %>
                        <option value ="United Kingdom">United Kingdom</option>
                    <% } %>
                    <% if (country == "USA") { %>
                        <option value ="USA" selected>USA</option>
                    <% } else { %>
                    <option value ="USA">USA</option>
                    <% } %>
                    <% if (country == "Germany") { %>
                        <option value ="Germany" selected>Germany</option>
                    <% } else { %>
                    <option value ="Germany">Germany</option>
                    <% } %>
                    <% if (country == "France") { %>
                        <option value ="France" selected>France</option>
                    <% } else { %>
                    <option value ="France">France</option>
                    <% } %>
                    <% if (country == "Spain") { %>
                        <option value ="Spain" selected>Spain</option>
                    <% } else { %>
                    <option value ="Japan">Japan</option>
                    <% } %>
                    <% if (country == "Greece") { %>
                        <option value ="Greece" selected>Greece</option>
                    <% } else { %>
                    <option value ="Greece">Greece</option>
                    <% } %>
                    <% if (country == "Turkey") { %>
                        <option value ="Turkey" selected>Turkey</option>
                    <% } else { %>
                    <option value ="Turkey">Turkey</option>
                    <% } %>
                    <% if (country == "Jordan") { %>
                        <option value ="Jordan" selected>Jordan</option>
                    <% } else { %>
                    <option value ="Jordan">Jordan</option>
                    <% } %>
                    <% if (country == "Egypt") { %>
                        <option value ="Egypt" selected>Egypt</option>
                    <% } else { %>
                    <option value ="Egypt">Egypt</option>
                    <% } %>
                    <% if (country == "Syria") { %>
                        <option value ="Syria" selected>Syria</option>
                    <% } else { %>
                    <option value ="Syria">Syria</option>
                    <% } %>
                    <% if (country == "Lebanon") { %>
                        <option value ="Lebanon" selected>Lebanon</option>
                    <% } else { %>
                    <option value ="Iran">Iran</option>
                    <% } %>
                    <% if (country == "China") { %>
                        <option value ="China" selected>China</option>
                    <% } else { %>
                    <option value ="China">China</option>
                    <% } %>
                    <% if (country == "Russia") { %>
                        <option value ="Russia" selected>Russia</option>
                    <% } else { %>
                    <option value ="Russia">Russia</option>
                    <% } %>
                    <% if (country == "India") { %>
                        <option value ="India" selected>India</option>
                    <% } else { %>
                    <option value ="India">India</option>
                    <% } %>
                    <% if (country == "Italy") { %>
                        <option value ="Italy" selected>Italy</option>
                    <% } else { %>
                    <option value ="Italy">Italy</option>
                    <% } %>
                    <% if (country == "Brazil") { %>
                        <option value ="Brazil" selected>Brazil</option>
                    <% } else { %>
                    <option value ="Brazil">Brazil</option>
                    <% } %>
                    <% if (country == "Canada") { %>
                        <option value ="Canada" selected>Canada</option>
                    <% } else { %>
                    <option value ="Canada">Canada</option>
                    <% } %>
                    <% if (country == "Greenland") { %>
                        <option value ="Greenland" selected>Greenland</option>
                    <% } else { %>
                    <option value ="Greenland">Greenland</option>
                    <% } %>
                </select>
            </td>            

        </tr>
        <tr> 
            <td>City</td> 
            <td dir ="ltr">
                <select name ="city" id ="city">
                    <% if (city == "Herzliya") { %>
                        <option value ="Herzliya" selected>Herzliya</option>
                    <% } else { %>
                    <option value ="Herzliya">Herzliya</option>
                    <% } %>
                    <% if (city == "Tel Aviv") { %>
                        <option value ="Tel Aviv" selected>Tel Aviv</option>
                    <% } else { %>
                    <option value ="Tel Aviv">Tel Aviv</option>
                    <% } %>
                    <% if (city == "Beer Sheva") { %>
                        <option value ="Beer Sheva" selected>Beer Sheva</option>
                    <% } else { %>
                    <option value ="Beer Sheva">Beer Sheva</option>
                    <% } %>
                    <% if (city == "Jerusalem") { %>
                        <option value ="Jerusalem" selected>Jerusalem</option>
                    <% } else { %>
                    <option value ="Jerusalem">Jerusalem</option>
                    <% } %>
                    <% if (city == "Haifa") { %>
                        <option value ="Haifa" selected>Haifa</option>
                    <% } else { %>
                    <option value ="Haifa">Haifa</option>
                    <% } %>
                    <% if (city == "New York") { %>
                        <option value ="New York" selected>New York</option>
                    <% } else { %>
                    <option value ="New York">New York</option>
                    <% } %>
                    <% if (city == "London") { %>
                        <option value ="London" selected>London</option>
                    <% } else { %>
                    <option value ="London">London</option>
                    <% } %>
                    <% if (city == "Raanana") { %>
                        <option value ="Raanana" selected>Raanana</option>
                    <% } else { %>
                    <option value ="Ra'anana">Ra'anana</option>
                    <% } %>
                    <% if (city == "Rishon Lezion") { %>
                        <option value ="Rishon Lezion" selected>Rishon Lezion</option>
                    <% } else { %>
                    <option value ="Rishon Lezion">Rishon Lezion</option>
                    <% } %>
                    <% if (city == "Paris") { %>
                        <option value ="Paris" selected>Paris</option>
                    <% } else { %>
                    <option value ="Paris">Paris</option>
                    <% } %>
                    <% if (city == "Los Angeles") { %>
                        <option value ="Los Angeles" selected>Los Angeles</option>
                    <% } else { %>
                    <option value ="Los Angeles">Los Angeles</option>
                    <% } %> 
                    <% if (city == "Washington D.C") { %>
                        <option value ="Washington D.C" selected>Washington D.C</option>
                    <% } else { %>
                    <option value ="Washington D.C">Washington D.C</option>
                    <% } %>
                    <% if (city == "Ramat Gan") { %>
                        <option value ="Ramat Gan" selected>Ramat Gan</option>
                    <% } else { %>
                    <option value ="Ramat Hasharon">Ramat Hasharon</option>
                    <% } %>
                    <% if (city == "Rosh HaAyin") { %>
                        <option value ="Rosh HaAyin" selected>Rosh HaAyin</option>
                    <% } else { %>
                    <option value ="Rosh HaAyin">Rosh HaAyin</option>
                    <% } %>
                    <% if (city == "Kiryat Shmona") { %>
                        <option value ="Kiryat Shmona" selected>Kiryat Shmona</option>
                    <% } else { %>
                    <option value ="Kiryat Shmona">Kiryat Shmona</option>
                    <% } %>
                    <% if (city == "Zichron Yaakov") { %>
                        <option value ="Zichron Yaakov" selected>Zichron Yaakov</option>
                    <% } else { %>
                    <option value ="Zichron Yaakov">Zichron Yaakov</option>
                    <% } %>
                    <% if (city == "Benjamin") { %>
                        <option value ="Benjamin" selected>Benjamin</option>
                    <% } else { %>
                    <option value ="Benjamin">Benjamin</option>
                    <% } %>
                    <% if (city == "Yeruham") { %>
                        <option value ="Yeruham" selected>Yeruham</option>
                    <% } else { %>
                    <option value ="Yeruham">Yeruham</option>
                    <% } %>
                    <% if (city == "Eilat") { %>
                        <option value ="Eilat" selected>Eilat</option>
                    <% } else { %>
                    <option value ="Eilat">Eilat</option>
                    <% } %>
                </select>
            </td>            

        </tr>
        <tr> 
            <td>Password</td> 
            <td><input type="password" id="ps" name="ps" value = "<%= pw%>" /></td> 
            <td><input type ="text" id ="mPs" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
     </table>
            <% if (LikePlayingVideoGames) { %>
            <input type = "checkbox" name = "hobies" value = "1" checked ="checked"/>LikePlayingVideoGames &nbsp;&nbsp;&nbsp;
            <% } else { %>
            <input type = "checkbox" name = "hobies" value = "1" />LikePlayingVideoGames &nbsp;&nbsp;&nbsp;
            <% } %>
            <% if (LikeTraveling) { %>
            <input type = "checkbox" name = "hobies" value = "2" checked ="checked"/>LikeTraveling &nbsp;&nbsp;&nbsp;
            <% } else { %>
            <input type = "checkbox" name = "hobies" value = "2" />LikeTraveling &nbsp;&nbsp;&nbsp;
            <% } %>
            <% if (LikeStudy) { %>
            <input type = "checkbox" name = "hobies" value = "3" checked ="checked"/>LikeStudy &nbsp;&nbsp;&nbsp;
            <% } else { %>
            <input type = "checkbox" name = "hobies" value = "3" />LikeStudy &nbsp;&nbsp;&nbsp;
            <% } %>
            <% if (LikeToSleep) { %>
            <input type = "checkbox" name = "hobies" value = "4" checked ="checked"/>LikeToSleep &nbsp;&nbsp;&nbsp;
            <% } else { %>
            <input type = "checkbox" name = "hobies" value = "4" />LikeToSleep &nbsp;&nbsp;&nbsp;
            <% } %>
            <% if (LikeToProgram) { %>
            <input type = "checkbox" name = "hobies" value = "5" checked ="checked"/>LikeToProgram &nbsp;&nbsp;&nbsp;
            <% } else { %>
            <input type = "checkbox" name = "hobies" value = "5" />LikeToProgram &nbsp;&nbsp;&nbsp;
            <% } %>
        <table>
        <tr>
            <td colspan="2" style="text-align: center;"> 
                <input type="submit" name="submit" value="    Update    " /> 

            </td>

        </tr>
        </table>


</form>

    <br />
    <%= msg %>
    <pre>









    </pre>
</div>
<script src="Countries.js"></script>

</asp:Content>
