using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajOlustur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnGonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtBaslik.Text , TxtIcerik.Value, true);
        Response.Redirect("GelenMesajlar.aspx");
    }
}