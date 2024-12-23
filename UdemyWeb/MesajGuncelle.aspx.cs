using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["MesajId"].ToString());
            DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();

            TxtBaslik.Text = dt.MesajSec(id)[0].Baslik;
            TxtIcerik.Value = dt.MesajSec(id)[0].Icerik;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["MesajId"].ToString());
        String IdDegeri = id.ToString();
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        dt.MesajGuncelle(TxtBaslik.Text, TxtIcerik.Value, Convert.ToInt32(IdDegeri));
        Response.Redirect("GelenMesajlar.aspx");
    }
}