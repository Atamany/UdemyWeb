using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogrenci_SifreDegistir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string numara = Session["Numara"].ToString();
        if (Page.IsPostBack == false) { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
        string numara = Request.QueryString["Numara"].ToString();
        if (TextBox5.Text == TextBox6.Text)
        {
            dt.OgrenciSifreGuncelle(TextBox5.Text, Convert.ToInt32(numara));
            Response.Redirect("Ogrenci_OgrenciProfil.aspx?Numara=" + numara);
        }
        else { TextBox5.Text = "Şifreler Eşleşmiyor!"; TextBox6.Text = "Şifreler Eşleşmiyor!"; }
    }
}