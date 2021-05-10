<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OyunHakkinda.aspx.cs" Inherits="DenemeCss.OyunHakkinda" %>

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
body{background-color:black;
     background-size:cover;
     background-attachment:fixed;
}
.btn{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg);
}
w3-image{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg)
}
.center {
    display:block;
    margin-left:auto;
    margin-right:auto;
    width: %80;
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
<img src="https://lh3.googleusercontent.com/proxy/gCdltFO3mknFKwZllrDIwpgnyE2P84R1QUDr3y3-5J08jSiyPv0c2NSzuv-8Z7WcGepaQFTWonjd1GKgTebEJglJ4C8tE_-dczXykgj7cEpmNAmwhsBUcFzz3Ym7QnIHmg0mrvxlEroB" class="center" />
<div class="w3-row-padding w3-padding-64 w3-container w3-black">
  <div class="w3-content">
    <div class="w3-content" style="width:initial">
      <h1>Apex Legends</h1>
      <h5 class="w3-padding-32">Apex Legends , Respawn Entertainment tarafından geliştirilen ve Electronic Arts. tarafından yayınlanan, ücretsiz bir Battle Royale oyunudur. Titanfall ile aynı evrende geçen oyun, Microsoft Windows , PlayStation 4 ve Xbox One için 
          4 Şubat 2019'da piyasaya sürüldü. Piyasaya sürüldükten kısa bir süre sonra 10 milyondan fazla indirme ve 1 milyon eş zamanlı oyuncuya ulaştı.</h5>

      <p class="w3-text-grey">Apex Legends, kahraman nişancı konseptini alan bir Battle Royale oyunudur. Titanfall 2'deki olaylardan 30 yıl sonra gerçekleşmektedir. 
          Apex, Efsaneler'i bir araya getirmesinden dolayı çoğu battle royale oyunundan farklıdır. Bu Efsaneler; Ofans, Savunma, Destek ve Rekon gibi rollere giren benzersiz yeteneklere sahip kahramanlardır. Oyuncular üç kişilik takımlara ayrılırlar, Her oyuncu sırayla diğerlerinden farklı bir efsane seçer, ve her maçta 20 takım birbirleriyle yarışır. Tüm takımlar ekipmansız başlar, ve oyunun haritasının üzerinden dropship ile uçar. Buradan haritada ulaşabilecekleri herhangi bir noktaya düşerler. Takımlar oyun haritasını silahlar, cephane ve diğer ekipmanlar için araştırmalıdır, aynı zamanda son takım olarak ayakta olmaya çalışmalı, haritada sürekli daralan güvenli bölgenin içinde kalmalıdırlar. Bir oyuncu savunmasız bir şekilde yaralanma durumuna düşebilir, takım arkadaşlarından birisi bu durumda o oyuncuyu kurtarmalıdır. Eğer oyuncunun yaralanmadan sonra sağlık durumu biterse, oyundan elenmiş olur, bu da oyuncunun ekipmanlarını ve bir pankartını ortada bırakır ve diğer oyuncular bu ekipmanlara erişebilir. Takım arkadaşları pankartı ele geçirip Spawn Beacon'a götürürse, oyuncu yeniden canlandırılabilir, limitli bir zaman içerisinde. Apex, hem takım arkadaşları ile sesli sohbet iletişimine sahiptir hem de oyuncunun silahlar, 
          rakipler veya ralli noktaları gibi harita özelliklerini pinglemesine izin veren bağlamsal tek tuşlu iletişime sahiptir.
Apex Legends ücretsiz olarak oynanabilir ve mikro dönüşümlerle desteklenir. Bu oyuncuya seçtikleri karakteri kişiselleştirme fırsatı verir. Apex Paketleri açılarak yeni kozmetik ürünler kazanılabilir. Apex Paketleri, deneyim seviyesi kazandıkça elde edilir.</p>
    </div>

    <div class="w3-third w3-center">
      <i class="fas fa-angle-dowwn w3-padding-64 w3-text-red"></i>
    </div>
  </div>
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

</body>
</html>
