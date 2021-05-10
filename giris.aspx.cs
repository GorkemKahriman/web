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
            try
            {
                client = new FireSharp.FirebaseClient(ifc);
            }
            catch
            {
                lbl_connection.Text = "Bağlantı Başarısız";
            }

        }
    }
}
