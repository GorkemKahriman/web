<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileLogin.aspx.cs" Inherits="DenemeCss.ProfileLogin" %>

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
     background-size:cover;
     background-attachment:fixed;
}
.btn{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg);
}
w3-image{
    background-image:url(https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg)
}
/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
  width: 40%;
  border-radius: 50%;
}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}

    </style>
<body>

    <form id="form1" runat="server">

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-DimGray" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="https://localhost:44374/WebForm1" class="w3-bar-item w3-button w3-padding-large w3-red">Ana Sayfa</a>
    <a href="https://localhost:44374/OyunHakkinda" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Oyun Hakk??nda</a>
    <a href="https://localhost:44374/Legendlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Legendlar</a>
    <a href="https://localhost:44374/Silahlar" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red">Silahlar</a>
    <a runat="server" id=registerbutton href="https://localhost:44374/Kayit" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">Kay??t Ol </a>
    <a runat="server" id=loginbutton href="https://localhost:44374/Giris" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right"> Giri?? Yap</a>
    <a href="https://localhost:44374/ProfileLogin" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-red w3-right">
      <asp:Label ID="logininfo" runat="server" Text=""></asp:Label>
     
  </div>
     
  </div>



  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Oyun Hakk??nda</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Legendlar</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-red">Silahlar</a>
  </div>
</div>

        <div >
            <br />
            <br />
            <h1>Profilinize Ho??geldiniz</h1>
            <h1>
                <asp:Label ID="lbl_hata" runat="server" BorderColor="Red" ForeColor="#CC3300"></asp:Label>
                <br />
            </h1>
            <h1>Kullan??c?? Ad??n??z : 
                <asp:Label ID="lbl_nickname" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txt_nickname" runat="server"></asp:TextBox>
            </h1>
            <h1>Ad??n??z :  
                <asp:Label ID="lbl_ad" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
            </h1>
            <h1>Soyad??n??z :  
                <asp:Label ID="lbl_soyad" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txt_soyad" runat="server"></asp:TextBox>
            </h1>
            <h1>E-Postan??z :  
                <asp:Label ID="lbl_eposta" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txt_eposta" runat="server"></asp:TextBox>
            </h1>
            <h1>Favori Silah??n??z :  
                <asp:Label ID="lbl_favsilah" runat="server" Text="Label"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="132px" Width="291px">
                <asp:ListItem>L??tfen Se??iniz</asp:ListItem>
                <asp:ListItem>HAVOC Rifle</asp:ListItem>
                <asp:ListItem>VK-47 Flatline</asp:ListItem>
                <asp:ListItem>Hemlok Burst AR</asp:ListItem>
                <asp:ListItem>R-301 Carbine</asp:ListItem>
                <asp:ListItem>Alternator SMG</asp:ListItem>
                <asp:ListItem>Prowler Burst PDW</asp:ListItem>
                <asp:ListItem>R-99 SMG</asp:ListItem>
                <asp:ListItem>Volt SMG</asp:ListItem>
                <asp:ListItem>Devotion LMG</asp:ListItem>
                <asp:ListItem>M600 Spitfire</asp:ListItem>
                <asp:ListItem>L-STAR EMG</asp:ListItem>
                <asp:ListItem>G7 Scout</asp:ListItem>
                <asp:ListItem>30-30 Repeater</asp:ListItem>
                <asp:ListItem>Triple Take</asp:ListItem>
                <asp:ListItem>Charge Rifle</asp:ListItem>
                <asp:ListItem>Longbow DMR</asp:ListItem>
                <asp:ListItem>Kraber</asp:ListItem>
                <asp:ListItem>Sentinel</asp:ListItem>
                <asp:ListItem>EVA-8 Auto</asp:ListItem>
                <asp:ListItem>Mastiff Shotgun</asp:ListItem>
                <asp:ListItem>Mozambique</asp:ListItem>
                <asp:ListItem>Peacekeeper</asp:ListItem>
                <asp:ListItem>RE-45 Auto</asp:ListItem>
                <asp:ListItem>P2020</asp:ListItem>
                <asp:ListItem>Wingman</asp:ListItem>
            </asp:DropDownList>
            </h1>
            <h1>Favori Legend??n??z : 
                <asp:Label ID="lbl_favlegend" runat="server" Text="Label"></asp:Label>
                <br /><asp:DropDownList ID="DropDownList2" runat="server" Width="291px">
                <asp:ListItem>L??tfen Se??iniz</asp:ListItem>
                <asp:ListItem>Wraith</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Mirage</asp:ListItem>
                <asp:ListItem>Octane</asp:ListItem>
                <asp:ListItem>Revenant</asp:ListItem>
                <asp:ListItem>Horizon</asp:ListItem>
                <asp:ListItem>Fuse</asp:ListItem>
                <asp:ListItem>Gibraltar</asp:ListItem>
                <asp:ListItem>Caustic</asp:ListItem>
                <asp:ListItem>Wattson</asp:ListItem>
                <asp:ListItem>Rampart</asp:ListItem>
                <asp:ListItem>Lifeline</asp:ListItem>
                <asp:ListItem>Loba</asp:ListItem>
                <asp:ListItem>Bloodhound</asp:ListItem>
                <asp:ListItem>Pathfinder</asp:ListItem>
                <asp:ListItem>Crypto</asp:ListItem>
                </asp:DropDownList>
            </h1>
            <h1>De??i??iklik Yapabilmek ????in ??ifrenizi Giriniz:</h1>
            <h1>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <br />
               <br /> <asp:Button ID="btn_degistir" runat="server" Text="G??ncelle" Font-Bold="True" Height="44px" Width="315px" BackColor="#009900" BorderColor="Black" OnClick="btn_degistir_Click" />
            </h1>
            <p> <asp:Button ID="btn_cikis" runat="server" Text="????k???? Yap" Font-Bold="True" Height="44px" Width="315px" BackColor="#6699FF" BorderColor="Black" OnClick="btn_cikis_Click" />
            </p>
            <p>
                <asp:Button ID="btn_hesabisil" runat="server" BackColor="Red" BorderColor="Black" Font-Bold="True" Height="30px" OnClick="btn_hesabisil_Click" Text="Hesab??m?? Sil" Width="313px" />
            </p>
            <p>&nbsp;</p>

            <p>&nbsp;</p>
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
