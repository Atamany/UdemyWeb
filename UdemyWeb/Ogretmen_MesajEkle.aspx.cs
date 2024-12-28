using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_MesajEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnGonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        dt.MesajGonder(Session["Numara"].ToString(), TxtAlici.Text, TxtBaslik.Text, TxtIcerik.Value);
        Response.Redirect("Ogretmen_GidenMesajlar.aspx");
    }
}