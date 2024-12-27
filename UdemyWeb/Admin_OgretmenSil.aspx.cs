using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OgretmenSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["OgrtId"].ToString());
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
        dt.OgretmenSil(id);
        Response.Redirect("Admin_OgretmenListesi.aspx");
    }
}