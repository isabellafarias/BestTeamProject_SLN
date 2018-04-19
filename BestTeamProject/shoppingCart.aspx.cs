using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BestTeamProject
{
    public partial class shoppingCart : System.Web.UI.Page
    {
        List<int> bookIds = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {

            Globals.conn.Open();

            string query = "SELECT * FROM book";    

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();
            lblOutput.Text = "";


            while (reader.Read())
            {

                Image bookImage = new Image();

                bookImage.ImageUrl = "~/Photos/book.png";

                
                lblOutput.Text = lblOutput.Text + " " +
                    "<div class='shoppingItem'> " +
                        "<img id='Image1' class='bookImg' src='../Photos/book.png'/>" +
                        "<p class='itemLabel'>" + reader["Title"] + "</p> <br /> <p class='priceLabel'> " + reader["Price"] + "</p>" +
                        "<div class='options'>" +
                            "<p class='remove'>Remove</p>" +
                            "<p class='midBar'>|</p>" +
                            "<p class='quantityLabel'>Quantitiy: </p>" +
                            "<input class='quantity' type='text' value='1'/>" +
                        "<div>" +
                    "</div>" +
                    "</div>" +
                    "</div>";


            }





            reader.Close();
            Globals.conn.Close();
        }
    }
  }
