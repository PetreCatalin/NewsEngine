using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Windows.Forms;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    int[] ids, ids1, ids2;
    string[] titles, titles1, titles2;
    string[] photos, photos1, photos2;
    DateTime[] dates, dates1, dates2;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        con.Open();

        // Example 2 - Print the first 10 row of data
        /*int topRows = 2;
        for (int i = 0; i < topRows; i++)
        {
            String rowText = string.Empty;
            foreach (DataColumn column in dataTable.Columns)
            {
                rowText += dataTable.Rows[i][column.ColumnName] + " | ";
            }
            Response.Write(rowText);
        }*/

        //categoria sport
        string query = "SELECT Id,Titlu,Poza,DataAdaugare FROM Stiri WHERE Categorie='Sport' ORDER BY DataAdaugare DESC";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader queryCommandReader = cmd.ExecuteReader();

        DataTable dataTable = new DataTable();
        dataTable.Load(queryCommandReader);

        int numarLinii = dataTable.Rows.Count;
        ids = new int[numarLinii + 5];
        titles = new string[numarLinii + 5];
        photos = new string[numarLinii + 5];
        dates = new DateTime[numarLinii + 5];

        for (int i = 0; i < numarLinii; i++)
        {
            ids[i] = (int)dataTable.Rows[i]["Id"];
            titles[i] = (String)dataTable.Rows[i]["Titlu"];
            photos[i] = (String)dataTable.Rows[i]["Poza"];
            dates[i] = (DateTime)dataTable.Rows[i]["DataAdaugare"];
            //Response.Write(ids[i] + " " + titles[i] + " " + photos[i] + " " + dates[i]+" ");
        }

        /*Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "alert('bla');", true);
        HtmlGenericControl div = new HtmlGenericControl("div");
        HtmlGenericControl imagine = new HtmlGenericControl("img");
        imagine.Attributes.Add("src", photos[0]); */

        sport1img.Src = "~/Imagini/" + photos[0];
        sport1h.InnerHtml = titles[0];
        sport1ad.InnerHtml = "Stire adaugata la " + dates[0];
        sport2img.Src = "~/Imagini/" + photos[1];
        sport2h.InnerHtml = titles[1];
        sport2ad.InnerHtml = "Stire adaugata la " + dates[1];
        sport3img.Src = "~/Imagini/" + photos[2];
        sport3h.InnerHtml = titles[2];
        sport3ad.InnerHtml = "Stire adaugata la " + dates[2];


        //categoria stiinta
        string query1 = "SELECT Id,Titlu,Poza,DataAdaugare FROM Stiri WHERE Categorie='Stiinta' ORDER BY DataAdaugare DESC";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        SqlDataReader queryCommandReader1 = cmd1.ExecuteReader();

        DataTable dataTable1 = new DataTable();
        dataTable1.Load(queryCommandReader1);

        int numarLinii1 = dataTable1.Rows.Count;
        ids1 = new int[numarLinii1 + 5];
        titles1 = new string[numarLinii1 + 5];
        photos1 = new string[numarLinii1 + 5];
        dates1 = new DateTime[numarLinii1 + 5];

        for (int i = 0; i < numarLinii1; i++)
        {
            ids1[i] = (int)dataTable1.Rows[i]["Id"];
            titles1[i] = (String)dataTable1.Rows[i]["Titlu"];
            photos1[i] = (String)dataTable1.Rows[i]["Poza"];
            dates1[i] = (DateTime)dataTable1.Rows[i]["DataAdaugare"];
            // Response.Write(ids1[i] + " " + titles1[i] + " " + photos1[i] + " " + dates1[i]+" ");
        }

        stiinta1img.Src = "~/Imagini/" + photos1[0];
        stiinta1h.InnerHtml = titles1[0];
        stiinta1ad.InnerHtml = "Stire adaugata la " + dates1[0];
        stiinta2img.Src = "~/Imagini/" + photos1[1];
        stiinta2h.InnerHtml = titles1[1];
        stiinta2ad.InnerHtml = "Stire adaugata la " + dates1[1];



        //categoria tehnologie
        string query2 = "SELECT Id,Titlu,Poza,DataAdaugare FROM Stiri WHERE Categorie='Tehnologie' ORDER BY DataAdaugare DESC";
        SqlCommand cmd2 = new SqlCommand(query2, con);
        SqlDataReader queryCommandReader2 = cmd2.ExecuteReader();

        DataTable dataTable2 = new DataTable();
        dataTable2.Load(queryCommandReader2);

        int numarLinii2 = dataTable2.Rows.Count;
        ids2 = new int[numarLinii2 + 5];
        titles2 = new string[numarLinii2 + 5];
        photos2 = new string[numarLinii2 + 5];
        dates2 = new DateTime[numarLinii2 + 5];

        for (int i = 0; i < numarLinii2; i++)
        {
            ids2[i] = (int)dataTable2.Rows[i]["Id"];
            titles2[i] = (String)dataTable2.Rows[i]["Titlu"];
            photos2[i] = (String)dataTable2.Rows[i]["Poza"];
            dates2[i] = (DateTime)dataTable2.Rows[i]["DataAdaugare"];
            // Response.Write(ids1[i] + " " + titles1[i] + " " + photos1[i] + " " + dates1[i]+" ");
        }

        tehnologie1img.Src = "~/Imagini/" + photos2[0];
        tehnologie1h.InnerHtml = titles2[0];
        tehnologie1ad.InnerHtml = "Stire adaugata la " + dates2[0];
        tehnologie2img.Src = "~/Imagini/" + photos2[1];
        tehnologie2h.InnerHtml = titles2[1];
        tehnologie2ad.InnerHtml = "Stire adaugata la " + dates2[1];

        con.Close();

    }

    protected void btnSessionState_Click1(object sender, EventArgs e)
    {
        Session["Id"] = ids[0];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click2(object sender, EventArgs e)
    {
        Session["Id"] = ids[1];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click3(object sender, EventArgs e)
    {
        Session["Id"] = ids[2];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click4(object sender, EventArgs e)
    {
        Session["Id"] = ids[3];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click5(object sender, EventArgs e)
    {
        Session["Id"] = ids1[0];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click6(object sender, EventArgs e)
    {
        Session["Id"] = ids1[1];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click7(object sender, EventArgs e)
    {
        Session["Id"] = ids1[2];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click8(object sender, EventArgs e)
    {
        Session["Id"] = ids1[3];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click9(object sender, EventArgs e)
    {
        Session["Id"] = ids2[0];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click10(object sender, EventArgs e)
    {
        Session["Id"] = ids2[1];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click11(object sender, EventArgs e)
    {
        Session["Id"] = ids2[2];
        Response.Redirect("News.aspx");
    }

    protected void btnSessionState_Click12(object sender, EventArgs e)
    {
        Session["Id"] = ids2[3];
        Response.Redirect("News.aspx");
    }
}