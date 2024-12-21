using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
            TxtDuyuruOgrt.DataSource = dt.OgretmenListesi();
            TxtDuyuruOgrt.DataTextField = "OgrtAdSoyad";
            TxtDuyuruOgrt.DataValueField = "OgrtId";
            TxtDuyuruOgrt.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
        dt.DuyuruEkle(TxtDuyuruBaslik.Text, TxtDuyuruIcerik.Value.ToString(), Convert.ToInt32(TxtDuyuruOgrt.SelectedValue),true);
        Response.Redirect("DuyuruListesi.aspx");
    }
}