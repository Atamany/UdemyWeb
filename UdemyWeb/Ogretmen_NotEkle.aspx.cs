using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_NotEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        int OgrId = Convert.ToInt32(TxtOgrenciId.Text);
        int DersId = Convert.ToInt32(dt.OgrtyeGoreDersGetir(Convert.ToInt32(Session["Numara"])));
        byte sinav1 = Convert.ToByte(TxtSinav1.Text);
        byte sinav2 = Convert.ToByte(TxtSinav2.Text);
        byte sinav3 = Convert.ToByte(TxtSinav3.Text);
        decimal Ortalama = (Convert.ToInt32(TxtSinav1.Text) + Convert.ToInt32(TxtSinav2.Text) + Convert.ToInt32(TxtSinav3.Text)) / 3;
        bool NotDurum;

        if (Ortalama >= 50) { NotDurum = true; } else { NotDurum = false; }

        dt.NotEkle(OgrId, DersId, sinav1, sinav2 ,sinav3,Ortalama,NotDurum);
        Response.Redirect("Ogretmen_NotListesi.aspx");
    }
}