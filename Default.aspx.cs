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
        int[] ids = new int[numarLinii + 5];
        string[] titles = new string[numarLinii + 5];
        string[] photos = new string[numarLinii + 5];
        DateTime[] dates = new DateTime[numarLinii + 5];

        for (int i = 0; i < numarLinii; i++)
        {
            ids[i] = (int)dataTable.Rows[i]["Id"];
            titles[i] = (String)dataTable.Rows[i]["Titlu"];
            photos[i] = (String)dataTable.Rows[i]["Poza"];
            dates[i] = (DateTime) dataTable.Rows[i]["DataAdaugare"];
            //Response.Write(ids[i] + " " + titles[i] + " " + photos[i] + " " + dates[i]+" ");
        }

        /*Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "alert('bla');", true);
        HtmlGenericControl div = new HtmlGenericControl("div");
        HtmlGenericControl imagine = new HtmlGenericControl("img");
        imagine.Attributes.Add("src", photos[0]); */
        
        con.Close();

    }
}