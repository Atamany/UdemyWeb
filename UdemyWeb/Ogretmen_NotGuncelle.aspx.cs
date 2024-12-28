using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_NotGuncelle : System.Web.UI.Page
{
    int nid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            nid = Convert.ToInt32(Request.QueryString["NotId"].ToString());
            DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
            TxtSinav1.Text = dt.NotGetir2(nid)[0].Sinav1.ToString();
            TxtSinav2.Text = dt.NotGetir2(nid)[0].Sinav2.ToString();
            TxtSinav3.Text = dt.NotGetir2(nid)[0].Sinav3.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double sinav1, sinav2, sinav3;
        double ortalama;
        string NotDurum;
        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        int nid = Convert.ToInt32(Request.QueryString["NotId"].ToString());
        sinav1 = Convert.ToInt32(TxtSinav1.Text);
        sinav2 = Convert.ToInt32(TxtSinav2.Text);
        sinav3 = Convert.ToInt32(TxtSinav3.Text);
        ortalama = (sinav1 + sinav2 + sinav3) / 3;
        String ortalamatext = ortalama.ToString("0.00");
        if (ortalama >= 50)
        {
            NotDurum = "True";
        }
        else
        {
            NotDurum = "False";
        }

        dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text), decimal.Parse(ortalamatext), bool.Parse(NotDurum), nid);
        Response.Redirect("Ogretmen_NotListesi.aspx");
    }
}