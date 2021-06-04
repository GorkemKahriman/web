using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DenemeCss
{
    public partial class Silahlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nickname"] == null)
            {
                registerbutton.Visible = true;
                infosilah.Visible = false;
                loginbutton.Visible = true;
                logininfo.Visible = false;
            }
            else
            {
                lbl_bilgi_silah.Visible = false;
                infosilah.Visible = true;
                registerbutton.Visible = false;
                loginbutton.Visible = false;
                logininfo.Visible = true;
                logininfo.Text = "" + Session["Nickname"];

            }



        }
    }
}
