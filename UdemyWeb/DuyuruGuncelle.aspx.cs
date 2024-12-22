using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
            DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
            
            TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
            TxtDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
        String IdDegeri = id.ToString();
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
        dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TxtDuyuruIcerik.Value, Convert.ToInt32(IdDegeri));
        Response.Redirect("DuyuruListesi.aspx");
    }
}