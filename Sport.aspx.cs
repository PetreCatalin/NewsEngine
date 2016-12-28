using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Sport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Sport' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();
        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        for (int i = 0; i < numarLinii; i++)
        {
            dataTable.Rows[i]["Poza"] = "Imagini/" + dataTable.Rows[i]["Poza"];
            // var titlu = (String) dataTable.Rows[i]["Titlu"];
            // Session[titlu] = dataTable.Rows[i]["Id"];
        }

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

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Sport' ORDER BY DataAdaugare DESC";
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

            string query = "SELECT Id, Titlu, Poza, DataAdaugare FROM Stiri WHERE Categorie = 'Sport' ORDER BY Titlu ASC";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        //selectam butonul pe care am dat click si ii luam valoarea din CommandArgument
        var button = (Button)sender;
        string id = button.CommandArgument;
       // Response.Write(id);
       /* HiddenField hidUserID = (HiddenField)Repeater1.Items[1].FindControl("HidUserID"); asa luam fiecare item din repeater
        string userID = hidUserID.Value; */
        Session["Id"] = int.Parse(id);
        Response.Redirect("News.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        var button = (Button)sender;
        string id = button.CommandArgument;

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();
        string query = "DELETE FROM STIRI WHERE Id=" + id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Sport.aspx");
    }
}