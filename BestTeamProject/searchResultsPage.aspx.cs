using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace BestTeamProject
{
    public partial class searchResultsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox searchResults = (TextBox)Master.FindControl("searchTextBox");

            //foreach (title in database)
            {

            //    if (title.Contains($"{searchResults.Text}"))
                {
                    TableRow newRow = new TableRow();
                    TableCell title = new TableCell();
                    TableCell author = new TableCell();
                    TableCell price = new TableCell();
                    TableCell qty = new TableCell();
                    TableCell addButtonCell = new TableCell();              

                    title.Text = "Harry Potter and the Order of the Phoenix";
                    author.Text = "J.K. Rowling";
                    price.Text = "$20.00";
                    qty.Text = "4";
                    Button addButton = new Button();
                    addButton.Text = "Add to Cart";
                    addButtonCell.Controls.Add(addButton);

                    newRow.Cells.Add(title);
                    newRow.Cells.Add(author);
                    newRow.Cells.Add(price);
                    newRow.Cells.Add(qty);
                    newRow.Cells.Add(addButtonCell);
                    
                    resultsTable.Rows.Add(newRow);
                }
            }

        }


    }
}