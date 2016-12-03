using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}