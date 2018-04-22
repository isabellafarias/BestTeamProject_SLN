using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BestTeamProject
{
    public partial class productPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Globals.conn.Open();

            //get information from book that was passed
            string query = "SELECT * FROM book where ISBN = " + Request.QueryString[0];

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            reader.Read();

            bookImage.ImageUrl = $"{reader["ImageURL"]}";
            bookTitleLabel.Text = $"<em>{reader["Title"]}</em> <br> by {reader["Author"]}";
            descriptionLabel.Text = $"{reader["Summary"]}";

            reader.Close();
            Globals.conn.Close();
        }
    }
}