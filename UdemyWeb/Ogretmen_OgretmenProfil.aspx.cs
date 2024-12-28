using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_OgretmenProfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();

        int numara = Convert.ToInt32(Session["Numara"].ToString());
        var dtOgretmenPaneliGetir = dt.OgretmenPaneliGetir(numara)[0];

        TxtOgrtId.Text = numara.ToString();
        TxtOgrtAdSoyad.Text = "Ad-Soyad: " + dtOgretmenPaneliGetir.OgrtAdSoyad;
        TxtOgrtBrans.Text = "Branş: " + dtOgretmenPaneliGetir.DersAd.ToString();
        TxtOgrtSifre.Text = "Şifre: " + dtOgretmenPaneliGetir.OgrtSifre;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

        Response.Redirect("Ogretmen_SifreDegistir.aspx?Numara=" + TxtOgrtId.Text);
    }
}