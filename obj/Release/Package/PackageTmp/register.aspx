<%@ Page Title="" Language="C#" MasterPageFile="~/Countries2.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <title>Countries</title>
    <link rel="stylesheet" href="Style.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class = marginLeft>
    <br />
    <br />
    <h1/>Registration form<h1> 
<form method="post" runat="server" onsubmit ="return chkForm();">
    <table>
        <tr>
            <td>User name</td> 
            <td><input type="text" id="uName" name="uName" /></td> 
            <td><input type ="text" id ="mUname" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr>
            <td>First name</td>
            <td><input type="text" id="fName" name="fName" /></td> 
            <td><input type ="text" id ="mFname" size = "30" class = "input" disabled = "disabled"/></td>
        </tr>
        <tr> 
            <td>Last name</td> 
            <td><input type="text" id="lName" name="lName" /></td> 
            <td><input type ="text" id ="mLname" size = "30" class = "input" disabled = "disabled"/></td>
        </tr>
        <tr> 
            <td>Email</td> 
            <td><input type="text" id="email" name="email" /></td> 
            <td><input type ="text" id ="mEmail" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr> 
            <td>Year Born</td> 
            <td><input type="text" id="Year" name="Year" /></td> 
            <td><input type ="text" id ="mYear" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
        <tr> 
            <td>gender</td> 
            <td><input type="radio" id="gender" name="gender" value ="male" checked/>Male</td>
            <td><input type="radio" id="gender" name="gender" value ="female"/>Female</td> 

        </tr>
        <tr> 
            <td>Phone</td> 
            <td dir ="ltr">
                <select name ="prefix" id ="prefix">
                    <option value ="054">054</option>
                    <option value ="050">050</option>
                    <option value ="051">051</option>
                    <option value ="052">052</option>
                    <option value ="053">053</option>
                    <option value ="055">055</option>
                    <option value ="056">056</option>
                    <option value ="057">057</option>
                    <option value ="058">058</option>
                    <option value ="059">059</option>
                    <option value ="01">01</option>
                    <option value ="02">02</option>
                    <option value ="03">03</option>
                    <option value ="04">04</option>
                    <option value ="05">05</option>
                    <option value ="06">06</option>
                    <option value ="07">07</option>
                    <option value ="08">08</option>
                    <option value ="09">09</option>
                </select>
                &nbsp;&nbsp; - &nbsp;&nbsp;
                <input type ="text" name ="phoneNum" id ="phoneNum" />
                <td><input type ="text" id ="mPhone" size = "30" class = "input" disabled = "disabled"/></td>
            </td>            

        </tr>
        <tr> 
            <td>country</td> 
            <td dir ="ltr">
                <select name ="country" id ="country">
                    <option value ="Israel">Israel</option>
                    <option value ="United Kingdom">United Kingdom</option>
                    <option value ="USA">USA</option>
                    <option value ="Germany">Germany</option>
                    <option value ="France">France</option>
                    <option value ="Japan">Japan</option>
                    <option value ="Greece">Greece</option>
                    <option value ="Turkey">Turkey</option>
                    <option value ="Jordan">Jordan</option>
                    <option value ="Egypt">Egypt</option>
                    <option value ="Syria">Syria</option>
                    <option value ="Iran">Iran</option>
                    <option value ="China">China</option>
                    <option value ="Russia">Russia</option>
                    <option value ="India">India</option>
                    <option value ="Italy">Italy</option>
                    <option value ="Brazil">Brazil</option>
                    <option value ="Canada">Canada</option>
                    <option value ="Greenland">Greenland</option>
                </select>
            </td>            

        </tr>
        <tr> 
            <td>City</td> 
            <td dir ="ltr">
                <select name ="city" id ="city">
                    <option value ="Herzliya">Herzliya</option>
                    <option value ="Tel Aviv">Tel Aviv</option>
                    <option value ="Beer Sheva">Beer Sheva</option>
                    <option value ="Jerusalem">Jerusalem</option>
                    <option value ="Haifa">Haifa</option>
                    <option value ="New York">New York</option>
                    <option value ="London">London</option>
                    <option value ="Ra'anana">Ra'anana</option>
                    <option value ="Rishon Lezion">Rishon Lezion</option>
                    <option value ="Paris">Paris</option>
                    <option value ="Los Angeles">Los Angeles</option>
                    <option value ="Washington D.C">Washington D.C</option>
                    <option value ="Ramat Hasharon">Ramat Hasharon</option>
                    <option value ="Rosh HaAyin">Rosh HaAyin</option>
                    <option value ="Kiryat Shmona">Kiryat Shmona</option>
                    <option value ="Zichron Yaakov">Zichron Yaakov</option>
                    <option value ="Benjamin">Benjamin</option>
                    <option value ="Yeruham">Yeruham</option>
                    <option value ="Eilat">Eilat</option>
                </select>
            </td>            

        </tr>
        <tr> 
            <td>Password</td> 
            <td><input type="text" id="ps" name="ps" /></td> 
            <td><input type ="text" id ="mPs" size = "30" class = "input" disabled = "disabled"/></td>

        </tr>
     </table>
          
            <input type = "checkbox" name = "hobies" value = "1" />LikePlayingVideoGames &nbsp;&nbsp;&nbsp;
            <input type = "checkbox" name = "hobies" value = "2" />LikeTraveling &nbsp;&nbsp;&nbsp;
            <input type = "checkbox" name = "hobies" value = "3" />LikeStudy &nbsp;&nbsp;&nbsp;
            <input type = "checkbox" name = "hobies" value = "4" />LikeToSleep &nbsp;&nbsp;&nbsp;
            <input type = "checkbox" name = "hobies" value = "5" />LikeToProgram &nbsp;&nbsp;&nbsp;
        <table>
        <tr>
            <td colspan="2" style="text-align: center;"> 
                <input type="submit" name="submit" value="    send    " /> 

            </td>

        </tr>
        </table>


</form>

    <br />
    <%= st %>

    <pre>









    </pre>
</div>
<script src="Countries.js"></script>

</asp:Content>
