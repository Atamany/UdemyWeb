using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["OgrId"].ToString());
                DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
                string cinsiyet = dt.OgrenciSec(id)[0].OgrCinsiyet;
                TxtOgrAd.Text = dt.OgrenciSec(id)[0].OgrAd;
                TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OgrSoyad;
                if (cinsiyet == "Erkek")
                {
                    TxtOgrCinsiyetE.Checked = true;
                }
                else if (cinsiyet == "Kız")
                {
                    TxtOgrCinsiyetK.Checked = true;
                }
                TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OgrTelefon;
                TxtOgrMail.Text = dt.OgrenciSec(id)[0].OgrMail;
                TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OgrSifre;
                TxtOgrFotograf.Text = dt.OgrenciSec(id)[0].OgrFotograf;
            }


            catch (global::System.Exception)
            {
                TxtOgrFotograf.Text = "";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
        string cinsiyet = TxtOgrCinsiyetE.Checked ? "Erkek" : TxtOgrCinsiyetK.Checked ? "Kız" : null;
        dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text,cinsiyet, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text, Convert.ToInt32(Request.QueryString["OgrId"].ToString()));
        Response.Redirect("Default.aspx");
    }
}