using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Editor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var title = titlu.Value;
        var categorie = DropDownList1.SelectedValue;
        DateTime data = DateTime.Today;
        var continut = TextBox1.Text;
        var imagine = FileUpload1.FileName;
        /*  if (FileUpload1.HasFile)
          {
              Response.Write(title + " " + categorie + " " + data + " " + continut+" "+imagine);
          } */
        mesajDiv.Visible = true;
        if (continut.Length == 0) mesaj.InnerHtml = "Continutul stirii nu poate fi nul!";
        else
        if (title.Length == 0) mesaj.InnerHtml = "Titlul stirii nu poate fi nul!";
        else
        if (imagine.Length==0) mesaj.InnerHtml = "Va rugam sa selectati o imagine!";
        else
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Stiri (HtmlContent, Titlu, Categorie, Poza, DataAdaugare) VALUES (@Continut, @Titlu, @Categorie,@Poza,@Data)";

            cmd.Parameters.AddWithValue("@Continut", continut);
            cmd.Parameters.AddWithValue("@Titlu", title);
            cmd.Parameters.AddWithValue("@Categorie", categorie);
            cmd.Parameters.AddWithValue("@Poza", imagine);
            cmd.Parameters.AddWithValue("@Data", data);

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Stirea a fost adaugata cu succes!')", true);
            titlu.Value = "";
            TextBox1.Text = "";
            mesaj.InnerHtml = "";
        }
    }
}