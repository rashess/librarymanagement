using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryManagement
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public static int isbn = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            visibility();
            autoId();
        }

        protected void Operation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Operation.SelectedIndex == 1)
            {
                Panel1.Visible = true;

            }
            else if(Operation.SelectedIndex == 2)
            {
                Response.Redirect("SearchBook.aspx");
            }
            else
            {
                Panel1.Visible = false;

            }
        }
        public void autoId()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\LibraryManagement\\LibraryManagement\\App_Data\\LibraryDatabase.mdf;Integrated Security=True";
            String str = "select count(*) from book";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            int count = 1700;
            count = count + Convert.ToInt16(cmd.ExecuteScalar()) + 1;
            isbn = count;
            lblISBN.Text = isbn.ToString();
            con.Close();
        }

        protected void AddBook_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\LibraryManagement\\LibraryManagement\\App_Data\\LibraryDatabase.mdf;Integrated Security=True";
            con.Open();
            String str = "insert into book(ISBN, title, author, publisher, year) values('" + isbn.ToString() + "', '" + txtTitle.Text + "', '" + txtAuthor.Text + "', '" + txtPub.Text + "', '" + txtYear.Text + "')";

            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script Language='javascript'>alert('Book Added')</script>");

        }
        public void visibility()
        {

            Panel1.Visible = false;
        }
    }
}