using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BestTeamProject
{
    public partial class profilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            emailLabel.Text = Session["userName"].ToString();
            string firstName = "";
            string lastName = "";

            Globals.conn.Open();

            string query = "SELECT * FROM user;";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();


            

            while (reader.Read())
            {
                var userName = reader["Username"];

                if(userName.ToString() == Session["userName"].ToString())
                {
                    firstName = reader["Firstname"].ToString();
                    lastName = reader["Lastname"].ToString();
                }
                
            }

            Globals.conn.Close();

            nameLabel.Text = firstName + " " + lastName;
        }
    }
}