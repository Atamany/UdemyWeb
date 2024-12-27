using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BolumListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_BolumTableAdapter dt = new DataSetTableAdapters.Tbl_BolumTableAdapter();
        Repeater1.DataSource = dt.BolumListesi();
        Repeater1.DataBind();
    }
    protected string GetFakulteAdiByNumara(object numara)
    {
        int Numara = Convert.ToInt32(numara);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT FakulteAd FROM Tbl_Fakulte WHERE FakulteId = @FakulteId", conn);
            cmd.Parameters.AddWithValue("@FakulteId", Numara);
            object result = cmd.ExecuteScalar();
            return result != null ? result.ToString() : "Bilinmiyor";
        }
    }
}