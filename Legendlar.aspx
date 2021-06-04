<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Legendlar.aspx.cs" Inherits="DenemeCss.Legendlar" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Apex Legends Wiki</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
body{background-color:darkgrey;
}
.btn{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg);
}
w3-image{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg)
}

</style>
<body>

    <form id="form1" runat="server">

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-DimGray" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="https://localhost:44374/WebForm1" class="w3-bar-item w3-button w3-padding-large w3-red">Ana Sayfa</a>
    <a href="https://localhost:44374/OyunHakkinda" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Oyun Hakkında</a>
    <a href="https://localhost:44374/Legendlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Legendlar</a>
    <a href="https://localhost:44374/Silahlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Silahlar</a>
    <a runat="server" id=registerbutton href="https://localhost:44374/Kayit" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">Kayıt Ol </a>
    <a runat="server" id=loginbutton href="https://localhost:44374/Giris" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right"> Giriş Yap</a>
    <a href="https://localhost:44374/ProfileLogin" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">
      <asp:Label ID="logininfo" runat="server" Text=""></asp:Label>
    <!--<a href="https://localhost:44374/Kullanicilar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">Kullanıcılar</a>-->

     
  </div>
     
  </div>



  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Oyun Hakkında</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Legendlar</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Silahlar</a>
  </div>
</div>
    <br />
    <br />
    <br />
    <div>
        <asp:Label ID="lbl_bilgi" runat="server" Text="Sayfa içeriğini görebilmek için lütfen kayıt olun veya giriş yapın" ForeColor="Red"></asp:Label>
        </div>
<div runat="server" id="info">
    <img src="Wraith.jpg" width="300" height="300" />Wraith
    <img src="Bangalore.jpg" width="300" height="300" />Bangalore
    <img src="Mirage.jpg" width="300" height="300" />Mirage
    <img src="Octane.jpg" width="300" height="300" />Octane
    <img src="Revenant.jpg" width="300" height="300" />Revenant
    <img src="Horizon.jpg" width="300" height="300" />Horizon
    <img src="Gibraltar.jpg" width="300" height="300" />Gibraltar
    <img src="Caustic.jpg" width="300" height="300" />Caustic
    <img src="Wattson.jpg" width="300" height="300" />Wattson
    <img src="Rampart.jpg" width="300" height="300" />Rampart
    <img src="Lifeline.jpg" width="300" height="300" />Lifeline
    <img src="Loba.jpg" width="300" height="300" />Loba
    <img src="Bloodhound.jpg" width="300" height="300" />Bloodhound
    <img src="Pathfinder.jpg" width="300" height="300" />PathFinder
    <img src="Crypto.jpg" width="300" height="300" />Crypto
</div>
   


<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

    </form>

</body>
</html>
