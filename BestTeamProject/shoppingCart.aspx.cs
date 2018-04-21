﻿using System;
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
            lblTable.Text = "";
            int counter = 100;
            double cartTotal = 0;


            while (reader.Read())
            {

                Image bookImage = new Image();

                bookImage.ImageUrl = "~/Photos/book.png";
                int quantity = 1;
                double total = Convert.ToDouble(reader["Price"]) * quantity;
                
                lblOutput.Text = lblOutput.Text + " " +
                    "<div class='shoppingItem'> " +
                        "<img id='Image1' class='bookImg' src='../Photos/book.png'/>" +
                        "<p class='itemLabel'>" + reader["Title"] + "</p> <br /> <p class='priceLabel'> " + reader["Price"] + "</p>" +
                        "<div class='options'>" +
                            "<p class='remove' id='remove" + counter.ToString() + "'>Remove</p>" +
                            "<p class='midBar'>|</p>" +
                            "<p class='quantityLabel' >Quantitiy: </p>" +
                            "<input class='quantity' type='text' value='1' id='quantity" + counter.ToString() + "' onChange='updateCart(this)'/>" +
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


            lblTable.Text = lblTable.Text + $"" +
                    $"<tr>" +
                        $"<td>Total</td>" +
                        $"<td></td>" +
                        $"<td></td>" +
                        $"<td id='cartTotal'>{cartTotal}</td>" +
                    $"</tr>";

            lblTable.Visible = true;


            reader.Close();
            Globals.conn.Close();
        }
    }
  }
