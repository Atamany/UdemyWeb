using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_DerslerTableAdapter dt = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
        dt.DersEkle(TxtDersAd.Text,true);
        Response.Redirect("DersListesi.aspx");
    }
}