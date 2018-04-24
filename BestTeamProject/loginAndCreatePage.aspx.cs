using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BestTeamProject
{
    public partial class loginAndCreatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void createAccountButton_Click(object sender, EventArgs e)
        {
            

            string firstName, lastName, emailAddress, passWord, confirmPassWord;

            firstName = createFirstNameTextBox.Text;
            lastName = createLastNameTextBox.Text;
            emailAddress = createEmailAddressTextBox.Text;
            passWord = createPasswordTextBox.Text;
            confirmPassWord = createConfirmPasswordTextBox.Text;

            if(authenticateEmailAddress(emailAddress) == false)
            {
                emailValidator.IsValid = false;
                
            }

            if(passWord != confirmPassWord)
            {
                passwordValidator.IsValid = false;
            }


            if (Page.IsValid)
            {
                Globals.conn.Open();
                string addUserQuery = $"Insert into user (Username, Password, FirstName, LastName)" +
                    $"values (\"{emailAddress}\",\"{passWord}\", \"{firstName}\", \"{lastName}\");";

                var cmd = new MySql.Data.MySqlClient.MySqlCommand(addUserQuery, Globals.conn);

                cmd.ExecuteNonQuery();

                Globals.conn.Close();


            }

            createFirstNameTextBox.Text = "";
            createLastNameTextBox.Text = "";
            createEmailAddressTextBox.Text = "";
            createPasswordTextBox.Text = "";
            createConfirmPasswordTextBox.Text = "";

        }

        private bool authenticateEmailAddress(string emailAddress)
        {
            Globals.conn.Open();

            string query = "SELECT * FROM user;";
            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            
            List<string> userNameList = new List<string>();

            while (reader.Read())
            {
                var userName = reader["Username"];
                userNameList.Add(userName.ToString());
            }

            Globals.conn.Close();

            if (userNameList.Contains(emailAddress))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string userName, passWord;

            userName = loginEmailAddressTextBox.Text;
            passWord = loginPasswordTextBox.Text;

            if(authenticateUserNameAndPassword(userName, passWord))
            {
                loginValidator.IsValid = true;
                Session["userName"] = userName;
            }
            else
            {
                loginValidator.IsValid = false;
            }
        }

        private bool authenticateUserNameAndPassword(string userName, string password)
        {
            Globals.conn.Open();

            string query = "SELECT * FROM USER";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

            while(reader.Read())
            {
                if(userName == reader["Username"].ToString() && password == reader["Password"].ToString())
                {
                    Globals.conn.Close();
                    return true;                    
                }
            }

            return false;
        }
    }
}