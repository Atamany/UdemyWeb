using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_FakulteSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["FakulteId"].ToString());
        DataSetTableAdapters.Tbl_FakulteTableAdapter dt = new DataSetTableAdapters.Tbl_FakulteTableAdapter();
        dt.FakulteSil(id);
        Response.Redirect("Admin_FakulteListesi.aspx");
    }
}