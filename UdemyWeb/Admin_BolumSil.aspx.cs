using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BolumSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["BolumId"].ToString());
        DataSetTableAdapters.Tbl_BolumTableAdapter dt = new DataSetTableAdapters.Tbl_BolumTableAdapter();
        dt.BolumSil(id);
        Response.Redirect("Admin_BolumListesi.aspx");
    }
}