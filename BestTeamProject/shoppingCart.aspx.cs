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
            Session["userName"] = "joe@gmail.com";


            if (System.Web.HttpContext.Current.Session["userName"] != null)
            {
                
                lblOutput.Text = "";


                string user = Session["userName"].ToString();

                

                

                Globals.conn.Open();

                string query = $"SELECT ct.ISBN, Title, Price, ImageURL FROM cart ct, book bk where ct.ISBN = bk.ISBN AND Username = '{user}'";

                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                var reader = cmd.ExecuteReader();
                lblOutput.Text = "";
                lblTable.Text = "";
                int counter = 100;
                double cartTotal = 0;


                if (reader.HasRows)
                {
                    lblEmpty.Visible = false;
                    btnClear.Visible = true;
                    btnContinue.Visible = true;
                    btnPurchase.Visible = true;


                    lblOutput.Text = "<form method='get'>";

                    while (reader.Read())
                    {

                    
                        
                        Image bookImage = new Image();

                        bookImage.ImageUrl = "~/Photos/book.png";
                        int quantity = 1;
                        double total = Convert.ToDouble(reader["Price"]) * quantity;

                        lblOutput.Text = lblOutput.Text + " " +
                            "<div class='shoppingItem'> " +
                                $"<img id='Image1' class='bookImg' src='{reader["ImageURL"]}'/>" +
                                "<p class='itemLabel'>" + reader["Title"] + "</p> <br /> <p class='priceLabel'> " + reader["Price"] + "</p>" +
                                "<div class='options'>" +
                                    "<p class='remove' id='remove" + counter.ToString() + "'>Remove</p>" +
                                    "<p class='midBar'>|</p>" +
                                    "<p class='quantityLabel' >Quantitiy: </p>" +
                                    "<input class='quantity' type='text' value='1' name='book" + counter.ToString() + "' id='quantity" + counter.ToString() + "' onChange='updateCart(this)'/>" +
                                "<div>" +
                            "</div>" +
                            "</div>" +
                            "</div>";

                        lblTable.Text = lblTable.Text + $"" +
                            $"<tr>" +
                                $"<td>{reader["Title"]}</td>" +
                                $"<td id='cartPrice{counter}'>{reader["Price"]}</td>" +
                                $"<td id='cartQuantity{counter}'>{quantity}</td>" +
                                $"<td id='cartTotal{counter}'>{total}</td>" +
                            $"</tr>";

                        counter++;
                        cartTotal = cartTotal + total;
                    }

                    lblOutput.Text = lblOutput.Text + "</form>";





                    lblTable.Text = lblTable.Text + $"" +
                            $"<tr>" +
                                $"<td>Total</td>" +
                                $"<td></td>" +
                                $"<td></td>" +
                                $"<td id='cartTotal'>{cartTotal}</td>" +
                            $"</tr>";

                    lblTable.Visible = true;

                } else
                {
                    btnClear.Visible = false;
                    btnContinue.Visible = false;
                    btnPurchase.Visible = false;



                    
                }
                reader.Close();
                Globals.conn.Close();
            } else
            {
                btnClear.Visible = false;
                btnContinue.Visible = false;
                btnPurchase.Visible = false;
          

                lblOutput.Text = "Please log in to view your shopping cart!";
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Server.Transfer("HomePage.aspx", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["userName"] != null)
            {
                string user = Session["userName"].ToString();
                Globals.conn.Open();

                string query = $"Delete from cart where Username = '{user}'";

                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                var reader = cmd.ExecuteReader();
                reader.Close();
                Globals.conn.Close();

                
                Server.Transfer("HomePage.aspx", true);
            }
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {

            List<string> ISBNs = new List<string>();
            List<int> quantities = new List<int>();
            int quantitiesCounter = 0;

            string user = Session["userName"].ToString();
            Globals.conn.Open();

            string query = $"SELECT ct.ISBN, Title, Price, Quantity, ImageURL FROM cart ct, book bk where ct.ISBN = bk.ISBN AND Username = '{user}'";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();

           
            while (reader.Read())
            {


                string ISBN = reader["ISBN"].ToString();
                int quantity = (int) reader["Quantity"];

                ISBNs.Add(ISBN);
                quantities.Add(quantity);

            }

            reader.Close();

            foreach (string isbn in ISBNs)
            {
                string localIsbn = isbn;

                string remove = $"update book set Quantity = {quantities[quantitiesCounter] - 1} where ISBN = {localIsbn}";
                var removeCmd = new MySql.Data.MySqlClient.MySqlCommand(remove, Globals.conn);

                var removeReader = removeCmd.ExecuteReader();
                removeReader.Close();
                quantitiesCounter++;
            }

           

            string deleteQuery = $"Delete from cart where Username = '{user}'";

            var deleteCmd = new MySql.Data.MySqlClient.MySqlCommand(deleteQuery, Globals.conn);
            var deleteReader = deleteCmd.ExecuteReader();
            deleteReader.Close();


           
            
            Globals.conn.Close();


            Server.Transfer("HomePage.aspx", true);
        }
    }
  }
