using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BolumEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PopulateFakulte();
        }
    }
    private void PopulateFakulte()
    {
        string connStr = ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "SELECT FakulteId, FakulteAd FROM Tbl_Fakulte";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            DDLFakulte.DataSource = dr;
            DDLFakulte.DataTextField = "FakulteAd"; // Kullanıcıya gösterilecek alan
            DDLFakulte.DataValueField = "FakulteId"; // Arka planda kullanılacak ID
            DDLFakulte.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int selectedFakulteId = int.Parse(DDLFakulte.SelectedValue);
        DataSetTableAdapters.Tbl_BolumTableAdapter dt = new DataSetTableAdapters.Tbl_BolumTableAdapter();
        dt.BolumEkle(selectedFakulteId, TxtBolumAd.Text, true);
        Response.Redirect("Admin_BolumListesi.aspx");
    }
}