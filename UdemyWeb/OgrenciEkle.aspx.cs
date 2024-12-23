using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
        string cinsiyet = TxtOgrCinsiyetE.Checked ? "Erkek" : TxtOgrCinsiyetK.Checked ? "Kız" : null;
        dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, cinsiyet, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text,true);

        var ogrenciListesi = dt.OgrenciListesi();
        var yeniOgrenci = ogrenciListesi.OrderByDescending(o => o.OgrId).FirstOrDefault();

        int id = yeniOgrenci.OgrId;
        string numara = Convert.ToString(id + 1000);
        

        dt.OgrenciGuncelle(numara, TxtOgrAd.Text, TxtOgrSoyad.Text, cinsiyet, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text, id);
        Response.Redirect("Default.aspx");
    }
}