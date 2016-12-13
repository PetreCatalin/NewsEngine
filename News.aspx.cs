using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Titlu,Poza,HtmlContent FROM Stiri WHERE Id = "+Session["Id"];
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();

        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        string title = (String) dataTable.Rows[0]["Titlu"]; ;
        string photo = (String) dataTable.Rows[0]["Poza"];
        string html = (String) dataTable.Rows[0]["HtmlContent"];

        titlu.InnerHtml = title;
        continut.InnerHtml = html;

        con.Close();
    }
}