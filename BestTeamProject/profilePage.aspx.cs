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
        private string firstName = "";
        private string lastName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                emailLabel.Text = Session["userName"].ToString();
            
            fillNameLabel();
            }
            catch (Exception)
            {

            }
        }

        protected void initialUpdateButton_Click(object sender, EventArgs e)
        {
            initialUpdateButton.Enabled = false;
            updateFirstNameTextBox.Visible = true;
            updateEmailTextBox.Visible = true;
            updateLastNameTextBox.Visible = true;
            updateButton.Visible = true;

            updateFirstNameTextBox.Text = firstName;
            updateLastNameTextBox.Text = lastName;
            updateEmailTextBox.Text = Session["userName"].ToString();
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            updateUserInformation(updateEmailTextBox.Text, updateFirstNameTextBox.Text, updateLastNameTextBox.Text);

            nameLabel.Text = updateFirstNameTextBox.Text + " " + updateLastNameTextBox.Text;
            emailLabel.Text = updateEmailTextBox.Text;

            updateEmailTextBox.Visible = false;
            updateFirstNameTextBox.Visible = false;
            updateLastNameTextBox.Visible = false;
            updateButton.Visible = false;
            initialUpdateButton.Enabled = true;

        }

        private void fillNameLabel()
        {
            Globals.conn.Open();

            string query = "SELECT * FROM user;";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();




            while (reader.Read())
            {
                var userName = reader["Username"];

                if (userName.ToString() == Session["userName"].ToString())
                {
                    firstName = reader["Firstname"].ToString();
                    lastName = reader["Lastname"].ToString();
                }

            }

            Globals.conn.Close();

            nameLabel.Text = firstName + " " + lastName;

            if(firstName == "Kavous")
            {
                profileImage.ImageUrl = "https://wpcarey.asu.edu/sites/default/files/styles/asu_isearch_profile/public/asu_isearch_photos/3025581.jpg?itok=ZcmoXdDA";
            }
        }

        private void updateUserInformation(string emailAddress, string firstName, string lastName)
        {
            Globals.conn.Open();

            string sqlStatement = $"UPDATE user " +
                                    $"SET Username = \"{emailAddress}\", Firstname = \"{firstName}\", Lastname = \"{lastName}\" " +
                                        $"WHERE Username = \"{Session["userName"].ToString()}\"; ";

            Session["userName"] = updateEmailTextBox.Text;

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(sqlStatement, Globals.conn);
            cmd.ExecuteNonQuery();

            Globals.conn.Close();
        }
    }
}