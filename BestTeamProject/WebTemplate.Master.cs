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

        protected void searchButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("searchResultsPage.aspx", true);
            
        }

        //Method to gain access to search content from child pages
        public string SearchResults
        {
            get
            {
                return searchTextBox.Text;
            }
            set
            {
                searchTextBox.Text = value;
            }
        }
    }
}