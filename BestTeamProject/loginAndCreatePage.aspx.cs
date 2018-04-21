using System;
using System.Collections.Generic;
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
            Globals.conn.Open();

            string firstName, lastName, emailAddress, passWord, confirmPassWord;

            firstName = createFirstNameTextBox.Text;
            lastName = createLastNameTextBox.Text;
            emailAddress = createEmailAddressTextBox.Text;
            passWord = createPasswordTextBox.Text;
            confirmPassWord = createConfirmPasswordTextBox.Text;


        }
    }
}