using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BestTeamProject
{
    public partial class WebTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cartButton_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("shoppingCart.aspx", true);
        }

        protected void ProfileButton_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("profilePage.aspx", true);
        }

        protected void speedReadLogo_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Homepage.aspx", true);
        }
    }
}