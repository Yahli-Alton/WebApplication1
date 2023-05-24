<meta charset="utf-8" />
<title>Countries</title>
<link rel="stylesheet" href="Style.css">



<h1 class="h1Gal">Photos Gallery</h1>

<table style="margin: 0px auto;">
    <tr>
        <td><img class="imgCell" src = "Images/p11.jpg" onmouseover="picShow('Images/p11.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p12.jpg" onmouseover="picShow('Images/p12.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p13.jpg" onmouseover="picShow('Images/p13.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p14.jpg" onmouseover="picShow('Images/p14.jpg')"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" src = "Images/p21.jpg" onmouseover="picShow('Images/p21.jpg')"/></td>
        <td rowspan = "2" colpsan = "2">
            <img class="BigPicImg" id=" "bigPic" src="Images/p11.jpg"/>
        </td>
        <td><img class="imgCell" src = "Images/p24.jpg" onmouseover="picShow('Images/p24.jpg')"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" src = "Images/p31.jpg" onmouseover="picShow('Images/p31.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p34.jpg" onmouseover="picShow('Images/p34.jpg')"/></td>
    </tr>
    <tr>
        <td><img class="imgCell" src = "Images/p41.jpg" onmouseover="picShow('Images/p41.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p42.jpg" onmouseover="picShow('Images/p42.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p43.jpg" onmouseover="picShow('Images/p43.jpg')"/></td>
        <td><img class="imgCell" src = "Images/p44.jpg" onmouseover="picShow('Images/p44.jpg')"/></td>
    </tr>
</table>

<script>
    function picShow(picSrc) {
        bigPic.src = picSrc;
    }
</script>