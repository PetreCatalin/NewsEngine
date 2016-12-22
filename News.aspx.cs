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

        string title = (String) dataTable.Rows[0]["Titlu"];
        string photo = (String) dataTable.Rows[0]["Poza"];
        string html = (String) dataTable.Rows[0]["HtmlContent"];

        titlu.InnerHtml = title;
        continut.InnerHtml = html;
        //Image1.ImageUrl= "~/Imagini/" + photo;
        imagine.Src= "~/Imagini/" + photo;

        //aici facem comentariile dinamic
        string query1 = "SELECT Comentariu,Data,Utilizator FROM Comentarii WHERE IdStire = " + Session["Id"];
        SqlCommand cmd1 = new SqlCommand(query1, con);
        SqlDataReader queryCommandReader1 = cmd1.ExecuteReader();
        DataTable dataTable1 = new DataTable();
        dataTable1.Load(queryCommandReader1);

        int numarLinii = dataTable1.Rows.Count;
        String [] comentariu = new string[numarLinii + 5];
        String [] utilizator = new string[numarLinii + 5];
        DateTime [] data = new DateTime[numarLinii + 5];

        for (int i = 0; i < numarLinii; i++)
        {
            comentariu[i] = (String) dataTable1.Rows[i]["Comentariu"];
            utilizator[i] = (String)dataTable1.Rows[i]["Utilizator"];
            data[i] = (DateTime)dataTable1.Rows[i]["Data"];
            //Response.Write(comentariu[i] + " " + utilizator[i] + " " + data[i] + " ");
        }

        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //asa se ia un element dintr-un LoginView in C# 
        TextBox tb = (TextBox) loginView1.FindControl("comentariuNou");
        var comentariu = tb.Text;
        DateTime data = DateTime.Now;
        var idStire = Session["Id"];
        var numeUtilizator = HttpContext.Current.User.Identity.Name;

       // Response.Write(numeUtilizator);

        if (comentariu.Length==0) ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Comentariul nu poate fi gol!')", true);
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Comentarii (IdStire, Comentariu, Data, Utilizator) VALUES (@idStire, @comentariu, @data,@numeUtilizator)";

            cmd.Parameters.AddWithValue("@idStire", idStire);
            cmd.Parameters.AddWithValue("@comentariu", comentariu);
            cmd.Parameters.AddWithValue("@numeUtilizator", numeUtilizator);
            cmd.Parameters.AddWithValue("@data", data);

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Comentariul a fost adaugat cu succes!')", true);
            tb.Text = "";
        }  
   
    }
}