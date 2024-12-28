using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogrenci_OgrenciProfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

        string ogrDurum;
        int numara = Convert.ToInt32(Session["Numara"].ToString());
        var dtOgrenciPaneliGetir = dt.OgrenciPaneliGetir(numara)[0];
        
        if (dtOgrenciPaneliGetir.Durum == true)
        {
            ogrDurum = "Aktif";
        }
        else if (dtOgrenciPaneliGetir.Durum == false)
        {
            ogrDurum = "Pasif";
        }
        else
        {
            ogrDurum = "Bilinmiyor";
        }

        TxtOgrId.Text = numara.ToString();
        TxtOgrTC.Text = "TC: " + dtOgrenciPaneliGetir.OgrenciTC.ToString();
        TxtOgrAdSoyad.Text = "Ad-Soyad: " + dtOgrenciPaneliGetir.OgrAd + " " + dtOgrenciPaneliGetir.OgrSoyad;
        TxtOgrFakulte.Text = "Fakülte: " + dtOgrenciPaneliGetir.FakulteAd.ToString();
        TxtOgrBolum.Text = "Bölüm: " + dtOgrenciPaneliGetir.BolumAd.ToString();
        TxtOgrDurum.Text = "Öğrencilik Durumu: " + ogrDurum;
        TxtOgrCinsiyet.Text = "Cinsiyet: " + dtOgrenciPaneliGetir.OgrCinsiyet;
        TxtOgrTelefon.Text = "Telefon: " + dtOgrenciPaneliGetir.OgrTelefon;
        TxtOgrMail.Text = "E-Posta: " + dtOgrenciPaneliGetir.OgrMail;
        TxtOgrSifre.Text = "Şifre: " + dtOgrenciPaneliGetir.OgrSifre;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

        Response.Redirect("Ogrenci_SifreDegistir.aspx?Numara=" + TxtOgrId.Text);
    }
}