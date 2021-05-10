<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Silahlar.aspx.cs" Inherits="DenemeCss.Silahlar" %>

<!DOCTYPE html>
<html lang="en">
<title>Apex Legends Wiki</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
body{background-color:dimgray;
}
.btn{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg);
}
w3-image{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg)
}

</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-DimGray" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="https://localhost:44374/WebForm1" class="w3-bar-item w3-button w3-padding-large w3-red">Ana Sayfa</a>
    <a href="https://localhost:44374/OyunHakkinda" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Oyun Hakkında</a>
    <a href="https://localhost:44374/Legendlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Legendlar</a>
    <a href="https://localhost:44374/Silahlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Silahlar</a>
    <a href="https://localhost:44374/Kayit" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">Kayıt Ol </a>
    <a href="https://localhost:44374/Giris" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right"> Giriş Yap</a>
     
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
<h1>Tüfekler</h1>
    <img src="Havoc_Icon.png"  />
    <img src="Hemlok_Icon.png" h/>
    <img src="Flatline_Icon.png" />
    <img src="G7_Scout_Icon.png"  />
    <img src="30-30_Repeater_Icon.png"  />
    <img src="R-301_Icon.png"  />
    <br />
<h1>Hafif Makineli Tüfekler</h1>
    <img src="Prowler_Icon.png" />
    <img src="Alternator_Icon.png" />
    <img src="Volt_Icon.png" />
    <img src="R-99_Icon.png" />
    <br />
<h1>Ağır Makineli Tüfekler</h1>
    <img src="Spitfire_Icon.png" />
    <img src="L-Star_Icon.png" />
    <img src="Devotion_Icon.png" />
    <br />
<h1>Nişancı Tüfekleri</h1>
    <img src="Kraber_Icon.png" />
    <img src="Sentinel_Icon.png" />
    <img src="Triple_Take_Icon.png" />
    <img src="Longbow_Icon.png" />
    <img src="Charge_Rifle_Icon.png" />
    <br />
<h1>Pompalı Tüfekler</h1>
    <img src="Eva-8_Icon.png" />
    <img src="Peacekeeper_Icon.png" />
    <img src="Mozambique_Icon.png" />
    <img src="Mastiff_Icon.png" />
    <br />
<h1>Tabancalar</h1>
    <img src="Wingman_Icon.png" />
    <img src="P2020_Icon.png" />
    <img src="Re-45_Icon.png" />





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

</body>
</html>
