using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DenemeCss
{
    public partial class OyunHakkinda : System.Web.UI.Page
    {
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

        }
    }
}
