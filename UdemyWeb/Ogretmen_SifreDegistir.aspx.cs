using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_SifreDegistir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string numara = Session["Numara"].ToString();
        if (Page.IsPostBack == false) { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
        string numara = Request.QueryString["Numara"].ToString();
        if (TextBox5.Text == TextBox6.Text)
        {
            dt.OgretmenSifreGuncelle(TextBox5.Text, Convert.ToInt32(numara));
            Response.Redirect("Ogretmen_OgretmenProfil.aspx?Numara=" + numara);
        }
        else { TextBox5.Text = "Şifreler Eşleşmiyor!"; TextBox6.Text = "Şifreler Eşleşmiyor!"; }
    }
}