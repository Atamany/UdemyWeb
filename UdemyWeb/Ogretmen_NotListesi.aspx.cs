using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_NotListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string numara = Session["Numara"].ToString();

        DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
        Repeater1.DataSource = dt.OgretmenNotu(Convert.ToInt32(numara));
        Repeater1.DataBind();
    }
}