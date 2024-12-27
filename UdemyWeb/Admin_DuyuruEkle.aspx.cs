using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DuyuruEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
        dt.DuyuruEkle(TxtDuyuruBaslik.Text, TxtDuyuruIcerik.Value, int.Parse(Session["Numara"].ToString()));
        Response.Redirect("Admin_DuyuruListesi.aspx");
    }
}