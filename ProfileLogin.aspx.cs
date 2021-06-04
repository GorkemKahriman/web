using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;

namespace DenemeCss
{
    public partial class ProfileLogin : System.Web.UI.Page
    {
        IFirebaseConfig ifc = new FirebaseConfig()
        {
            AuthSecret = "GBgshjuQc7rgVOPfa1yS0fMp9AelicizFv437PS6",
            BasePath = "https://web-proje-665e8-default-rtdb.europe-west1.firebasedatabase.app/"
        };

        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nickname"] == null)
            {
                registerbutton.Visible = true;
                loginbutton.Visible = true;
                logininfo.Visible = false;
            }
            else
            {
                registerbutton.Visible = false;
                loginbutton.Visible = false;
                logininfo.Visible = true;
                logininfo.Text = "" + Session["Nickname"];

            }
            logininfo.Text = "" + Session["Nickname"];
            string aktifkullanici = Session["Nickname"].ToString();
            try
            {
                client = new FireSharp.FirebaseClient(ifc);
            }
            catch
            {
                lbl_ad.Text = "Bağlantı Başarısız";
            }

            FirebaseResponse response = client.Get("Users/" + Session["Nickname"]);
            Uye uyeler = response.ResultAs<Uye>();
            if(aktifkullanici.Equals(uyeler.Nickname))
            {
                lbl_nickname.Text = uyeler.Nickname;
                lbl_ad.Text = uyeler.UyeAd;
                lbl_soyad.Text = uyeler.UyeSoyad;
                lbl_eposta.Text = uyeler.UyeEposta;
                lbl_favlegend.Text = uyeler.FavLegend;
                lbl_favsilah.Text = uyeler.FavSilah;



            }
                

            

            
        }

        protected void btn_cikis_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Webform1.aspx");
        }

        protected void btn_hesabisil_Click(object sender, EventArgs e)
        {
            FirebaseResponse response = client.Delete("Users/" + Session["Nickname"]);
            Session.Clear();
            Response.Redirect("Webform1.aspx");
        }

        protected void btn_degistir_Click(object sender, EventArgs e)
        {
            FirebaseResponse res = client.Get(@"Users/" + Session["Nickname"]);
            String UyeNick = Session["Nickname"].ToString();
            Uye ResUser = res.ResultAs<Uye>();
            Uye CurUser = new Uye()
            {
                Nickname =  UyeNick,
                Password = TextBox1.Text

            };
            
            if(Uye.Authentication(ResUser,CurUser)== true)
            {
                if (string.IsNullOrWhiteSpace(txt_nickname.Text) &&
                string.IsNullOrWhiteSpace(txt_ad.Text) &&
                string.IsNullOrWhiteSpace(txt_soyad.Text) &&
                string.IsNullOrWhiteSpace(txt_eposta.Text) &&
                string.IsNullOrWhiteSpace(DropDownList1.Text) &&
                string.IsNullOrWhiteSpace(DropDownList2.Text))
                {
                    lbl_hata.Text = "Lütfen Tüm Alanları Doldurunuz";
                }
                Uye uye = new Uye()
                {
                    Nickname = txt_nickname.Text,
                    UyeAd = txt_ad.Text,
                    UyeSoyad = txt_soyad.Text,
                    UyeEposta = txt_eposta.Text,
                    FavSilah = DropDownList1.Text,
                    FavLegend = DropDownList2.Text,
                    Password = TextBox1.Text

                };


                FirebaseResponse response = client.Update("Users/" + Session["Nickname"], uye);
                _ = response.ResultAs<Uye>();

            }
            else
            {
                lbl_hata.Text = "Yanlış Şifre Girdiniz";
                //basarisiz
            }

            
        }
    }
    
}
