using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_FakulteGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            id = Convert.ToInt32(Request.QueryString["FakulteId"].ToString());
            DataSetTableAdapters.Tbl_FakulteTableAdapter dt = new DataSetTableAdapters.Tbl_FakulteTableAdapter();
            TxtFakulteAd.Text = dt.FakulteGetir(id)[0].FakulteAd;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_FakulteTableAdapter dt = new DataSetTableAdapters.Tbl_FakulteTableAdapter();
        dt.FakulteGuncelle(TxtFakulteAd.Text, Convert.ToInt32(Request.QueryString["FakulteId"].ToString()));
        Response.Redirect("Admin_FakulteListesi.aspx");
    }
}