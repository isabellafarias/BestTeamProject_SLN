using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BestTeamProject
{
    

    public static class Globals		
    {
        public static string dbConnectionString = "server=cis425.wpcarey.asu.edu;uid=Jabingh1;pwd=shineQUITE56;database=groupb01;";

        public static MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);

        
    }


    public partial class WebTemplate : System.Web.UI.MasterPage
    {


        


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cartButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("shoppingCart.aspx", true);         
        }

        protected void ProfileButton_Click(object sender, ImageClickEventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["userName"] != null)
            {
                Response.Redirect("profilePage.aspx", true);
            }
            else
            {

                Response.Redirect("loginAndCreatePage.aspx", true);
                
            }
        }

        protected void speedReadLogo_Click(object sender, ImageClickEventArgs e)
        {
           Response.Redirect("Homepage.aspx", true);
        }

        public string searchVal = "";
        public string searchByVal = "";



        protected void searchButton_Click(object sender, EventArgs e)
        {
            searchVal = searchTextBox.Text;
            searchByVal = DropDownList1.SelectedValue;

            Session["SearchValue"] = searchTextBox.Text;
            Session["SearchByValue"] = DropDownList1.SelectedValue;

            if(Server.Equals("searchResultsPage.aspx"))
            {
                Response.Redirect(Request.RawUrl);

            }
            else
            {
                Response.Redirect("searchResultsPage.aspx", true);
            }
        }


    }
}