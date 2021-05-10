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
    public partial class Kayit : System.Web.UI.Page
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
                lbl_connection.Text = "Bağlantı Başarısız";
            }

        }

        protected void btn_kayit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txt_ad.Text) &&
                string.IsNullOrWhiteSpace(txt_soyad.Text) &&
                string.IsNullOrWhiteSpace(txt_eposta.Text) &&
                string.IsNullOrWhiteSpace(txt_sifre.Text) &&
                string.IsNullOrWhiteSpace(DropDownList1.Text) &&
                string.IsNullOrWhiteSpace(DropDownList2.Text))
            {
                lbl_uyari.Text = "Lütfen Tüm Alanları Doldurunuz";
            }

            ClassLibrary.Uyeler uye = new ClassLibrary.Uyeler()
            {
                UyeAd = txt_ad.Text,
                UyeSoyad = txt_soyad.Text,
                UyeEposta = txt_eposta.Text,
                Password = txt_sifre.Text,
                FavSilah = DropDownList1.Text,
                FavLegend = DropDownList2.Text
            };

            SetResponse set = client.Set(@"Users/" + txt_eposta.Text, uye);
            

            


        }
    }
}
