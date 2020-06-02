using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LibraryManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            visibility();
        }

        protected void Search_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Search.SelectedIndex == 1)
            {
                txtsearchtitle.Visible = true;
                txtsearchauth.Visible = false;
                txtisbn.Visible = false;

                Label1.Visible = true;
                Label2.Visible = false;
                Label3.Visible = false;
            }
            else if (Search.SelectedIndex == 2)
            {
                txtsearchtitle.Visible = false;
                txtsearchauth.Visible = true;
                txtisbn.Visible = false;

                Label1.Visible = false;
                Label2.Visible = true;
                Label3.Visible = false;
            }
            else if (Search.SelectedIndex == 3)
            {
                txtsearchtitle.Visible = false;
                txtsearchauth.Visible = false;
                txtisbn.Visible = true;

                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = true;
            }
        }
        public void visibility()
        {
            txtsearchtitle.Visible = false;
            txtsearchauth.Visible = false;
            txtisbn.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            //Panel2.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\LibraryManagement\\LibraryManagement\\App_Data\\LibraryDatabase.mdf;Integrated Security=True";
            String str = "";
            if (Search.SelectedIndex == 1)
            {
                str = "select * from book where title = '" + txtsearchtitle.Text + "'";
            }
            else if (Search.SelectedIndex == 2)
            {
                str = "select * from book where author = '" + txtsearchauth.Text + "'";
            }
            else if (Search.SelectedIndex == 3)
            {
                str = "select * from book where ISBN = '" + txtisbn.Text + "'";
            }
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    lblisbn.Text = dr[0].ToString();
                    lbltitle.Text = dr[1].ToString();
                    lblauthor.Text = dr[2].ToString();
                    lblpub.Text = dr[3].ToString();
                    lblyear.Text = dr[4].ToString();

                    Panel1.Visible = true;
                }
            }
            con.Close();
        }
    }
}