using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DenemeCss
{
    public partial class Admin : System.Web.UI.Page
    {
        IFirebaseConfig ifc = new FirebaseConfig()
        {
            AuthSecret = "GBgshjuQc7rgVOPfa1yS0fMp9AelicizFv437PS6",
            BasePath = "https://web-proje-665e8-default-rtdb.europe-west1.firebasedatabase.app/"
        };
        IFirebaseClient client;
        
            protected void Page_Load(object sender, EventArgs e)
            {
            try
            {
                client = new FireSharp.FirebaseClient(ifc);
            }
            catch
            {

            }
            yonetimpanel.Visible = false;
            adminpanel.Visible = false;
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
            FirebaseResponse response = client.Get("Users/" + Session["Nickname"]);
            Uye uyeler = response.ResultAs<Uye>();
            if (uyeler.UyeAdmin == 1)
            {
                adminpanel.Visible = true;
                yonetimpanel.Visible = true;
                Label1.Visible = false;
            }
                 

                    
            





        }

        protected void btn_sil_Click(object sender, EventArgs e)
        {
            FirebaseResponse response = client.Delete("Users/" + txt_nickname.Text);
            Label1.Text = "Kullanıcının hesabı silinmiştir.";
        }

        protected void btn_yonetici_Click(object sender, EventArgs e)
        {
            Uye uye = new Uye()
            {
                UyeAdmin = 1

            };


            FirebaseResponse response = client.Update("Users/" + txt_nickname.Text, uye);
            _ = response.ResultAs<Uye>();
        }
    }
}
