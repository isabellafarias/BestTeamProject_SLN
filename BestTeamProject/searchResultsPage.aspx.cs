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
            isbnList.Clear();

            //gather search values
            string searchTextboxValue = (string)Session[0];
            string searchByValue = (string)Session[1];
            
            //setup database
            Globals.conn.Open();

            string query = "SELECT * FROM book";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);
            var reader = cmd.ExecuteReader();


            while (reader.Read())
            {
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
                    TableCell isbnCell = new TableCell();
                    TableCell title = new TableCell();
                    TableCell author = new TableCell();
                    TableCell price = new TableCell();
                    TableCell qty = new TableCell();
                    TableCell addButtonCell = new TableCell();

                    HyperLink titleLink = new HyperLink();
                    titleLink.Text = titleVal;
                    titleLink.NavigateUrl = "productPage.aspx?isbn=" + isbnVal;
                    title.Controls.Add(titleLink);

                    isbnCell.Text = isbnVal;
                    author.Text = authorVal;
                    price.Text = priceVal;
                    qty.Text = qtyVal;

                    Button addButton = new Button();
                    addButton.ID = $"{isbnVal}";
                    addButton.Click += delegate
                    {        
                        //NEED TO INPUT USER ID HERE INSTEAD OF MY NAME
                        string query2 = $"insert into cart values (\"{isbnVal}\",\"ifarias\")";

                        MySqlCommand MyCommand2 = new MySqlCommand(query2, Globals.conn);
                        MySqlDataReader reader2;
                        Globals.conn.Close();
                        Globals.conn.Open();
                        reader2 = MyCommand2.ExecuteReader();
                        while (reader2.Read())
                        { }
                        Globals.conn.Close();

                        addButton.Visible = false;
                    };

                    addButton.Text = "Add to Cart";
                    addButtonCell.Controls.Add(addButton);

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

        void addButtonClick(object s, EventArgs ea)
        {
            Button clickedButton = (Button)s;

            testLbl.Text = isbnList[0];

            //need to figure out how to enter current username
            //Globals.conn.Open();
            //string insertQuery = $"insert into cart values ({clickedButton.ID}, ifarias)";

            //var cmd2 = new MySql.Data.MySqlClient.MySqlCommand(insertQuery, Globals.conn);
            //var reader2 = cmd2.ExecuteReader();
            //reader2.Close();
            //Globals.conn.Close();
        }
    }
}