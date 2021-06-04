using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DenemeCss
{
    public partial class Legendlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Nickname"] == null)
            {
                info.Visible = false;
                registerbutton.Visible = true;
                loginbutton.Visible = true;
                logininfo.Visible = false;
            }
            else
            {
                lbl_bilgi.Visible = false;
                info.Visible = true;
                registerbutton.Visible = false;
                loginbutton.Visible = false;
                logininfo.Visible = true;
                logininfo.Text= "" + Session["Nickname"];
            }

            

           
            
            
        }
    }
}
