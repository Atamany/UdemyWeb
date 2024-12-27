using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_FakulteListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_FakulteTableAdapter dt = new DataSetTableAdapters.Tbl_FakulteTableAdapter();
        Repeater1.DataSource = dt.FakulteListesi();
        Repeater1.DataBind();
    }
}