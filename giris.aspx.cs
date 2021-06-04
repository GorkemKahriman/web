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
    public partial class Giris : System.Web.UI.Page
    {
        IFirebaseConfig ifc = new FirebaseConfig()
        {
            AuthSecret = "GBgshjuQc7rgVOPfa1yS0fMp9AelicizFv437PS6",
            BasePath = "https://web-proje-665e8-default-rtdb.europe-west1.firebasedatabase.app/"
        };

        
        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Nickname"] == null)
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
            try
            {
                client = new FireSharp.FirebaseClient(ifc);
            }
            catch
            {
                lbl_uyari2.Text = "Bağlantı Başarısız";
            }

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            Uye uyeis = new Uye();
            if (string.IsNullOrWhiteSpace(txt_nicknamegiris.Text) &&
                string.IsNullOrWhiteSpace(txt_sifregiris.Text))
            {
                lbl_uyari2.Text = "Lütfen Tüm Alanları Doldurunuz";
            }
            FirebaseResponse res = client.Get(@"Users/" + txt_nicknamegiris.Text);
            Uye ResUser = res.ResultAs<Uye>();
            Uye CurUser = new Uye()
            {
                Nickname = txt_nicknamegiris.Text,
                Password = txt_sifregiris.Text
            };
            
            if(Uye.Authentication(ResUser,CurUser) == true)
            {
                Session["Nickname"] = txt_nicknamegiris.Text.Trim();
                Response.Redirect("ProfileLogin.aspx");

               
            }
            else
            {
                lbl_uyari2.Text = "Yanlis kullanici adi veya parola";
            }

        }
    }
}
