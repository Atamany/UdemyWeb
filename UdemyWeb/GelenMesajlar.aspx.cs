﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GelenMesajlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        Repeater1.DataSource = dt.GelenMesaj();
        Repeater1.DataBind();


    }
}