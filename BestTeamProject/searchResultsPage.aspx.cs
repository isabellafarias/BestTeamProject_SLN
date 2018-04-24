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
    public partial class searchResultsPage : System.Web.UI.Page
    {
        List<string> isbnList = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["SearchValue"] != null && System.Web.HttpContext.Current.Session["SearchByValue"] != null)
            {
                isbnList.Clear();

                //gather search values
                string searchTextboxValue = (string)Session["SearchValue"];
                string searchByValue = (string)Session["SearchByValue"];

                //setup database
                Globals.conn.Open();

                string query = "SELECT * FROM book";

                var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
                var reader = cmd.ExecuteReader();


                while (reader.Read())
                {
                    Image bookImage = new Image();
                    bookImage.ImageUrl = (string)reader["imageURL"];
                    bookImage.Height = 120;

                    string isbnVal = (string)reader["ISBN"];
                    string titleVal = (string)reader["Title"];
                    string authorVal = (string)reader["Author"];
                    string priceVal = $"{reader["Price"]}";
                    string qtyVal = $"{reader["Quantity"]}";

                    string dbSearchVal = (string)reader[searchByValue];
                    dbSearchVal = dbSearchVal.ToUpper();

                    if (dbSearchVal.Contains($"{searchTextboxValue.ToUpper()}"))
                    {
                        isbnList.Add((string)reader["ISBN"]);

                        TableRow newRow = new TableRow();
                        TableCell bookImageCell = new TableCell();
                        TableCell isbnCell = new TableCell();
                        TableCell title = new TableCell();
                        TableCell author = new TableCell();
                        TableCell price = new TableCell();
                        TableCell qty = new TableCell();
                        TableCell addButtonCell = new TableCell();

                        bookImageCell.Controls.Add(bookImage);

                        HyperLink titleLink = new HyperLink();
                        titleLink.Text = titleVal;
                        titleLink.NavigateUrl = "productPage.aspx?isbn=" + isbnVal;
                        title.Controls.Add(titleLink);

                        isbnCell.Text = isbnVal;
                        author.Text = authorVal;
                        price.Text = "$" + priceVal;
                        qty.Text = qtyVal;

                        Button addButton = new Button();
                        addButton.ID = $"{isbnVal}";

                        if (qtyVal == "0")
                        {
                            addButton.Visible = false;
                        }


                            addButton.Click += delegate
                        {
                            if(System.Web.HttpContext.Current.Session["userName"] != null)
                            { 
                                string user = (string)Session["userName"];

                                string query2 = $"insert into cart values (\"{isbnVal}\",\"{user}\")";

                                MySqlCommand MyCommand2 = new MySqlCommand(query2, Globals.conn);
                                MySqlDataReader reader2;
                                Globals.conn.Close();
                                Globals.conn.Open();
                                reader2 = MyCommand2.ExecuteReader();
                                while (reader2.Read())
                                { }
                                Globals.conn.Close();

                                addButton.Visible = false;

                                //string query3 = $"update book set Quantity=Quantity-1 where ISBN = \'{isbnVal}\'";

                                //MySqlCommand MyCommand3 = new MySqlCommand(query3, Globals.conn);
                                //MySqlDataReader reader3;
                                //Globals.conn.Close();
                                //Globals.conn.Open();
                                //reader3 = MyCommand3.ExecuteReader();
                                //while (reader3.Read())
                                //{ }
                                //Globals.conn.Close();
                            }
                            else
                            {
                                Response.Redirect("loginAndCreatePage.aspx", true);
                            }
                        };

                        addButton.Text = "Add to Cart";
                        addButtonCell.Controls.Add(addButton);

                        newRow.Cells.Add(bookImageCell);
                        newRow.Cells.Add(isbnCell);
                        newRow.Cells.Add(title);
                        newRow.Cells.Add(author);
                        newRow.Cells.Add(price);
                        newRow.Cells.Add(qty);
                        newRow.Cells.Add(addButtonCell);

                        resultsTable.Rows.Add(newRow);


                    }
                }
                reader.Close();
                Globals.conn.Close();
            }
        }

        public void addButtonClick(object s, EventArgs ea)
        {

        }
    }
}