using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Tehnologie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Tehnologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

        Repeater1.DataSource = dataTable;
        Repeater1.DataBind();
        con.Close();
    }

    protected void schimb_sortare(object sender, EventArgs e)
    {
        var alegere = DropDownList1.SelectedValue;
        if (alegere == "DataAdaugarii")
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Tehnologie' ORDER BY DataAdaugare DESC";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;
            for (int i = 0; i < numarLinii; i++)
                dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
        }
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Tehnologie' ORDER BY Titlu ASC";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader queryCommandReader = cmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(queryCommandReader);

            int numarLinii = dataTable.Rows.Count;
            for (int i = 0; i < numarLinii; i++)
                dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];

            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
        }
    }
}