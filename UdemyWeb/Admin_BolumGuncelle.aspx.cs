using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BolumGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PopulateFakulte();
            try
            {
                int nid = Convert.ToInt32(Request.QueryString["BolumId"].ToString());
                DataSetTableAdapters.Tbl_BolumTableAdapter dt = new DataSetTableAdapters.Tbl_BolumTableAdapter();
                TxtBolumAd.Text = dt.BolumGetir(nid)[0].BolumAd.ToString();
                DDLFakulte.SelectedValue = Convert.ToInt32(dt.BolumGetir(nid)[0].Fakulte).ToString();
            }
            catch { }
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
        DataSetTableAdapters.Tbl_BolumTableAdapter dt = new DataSetTableAdapters.Tbl_BolumTableAdapter();
        int nid = Convert.ToInt32(Request.QueryString["BolumId"].ToString());
        string BolumAd = TxtBolumAd.Text;
        string selectedValue = DDLFakulte.SelectedValue;
        int fakulteId = int.Parse(selectedValue); // Değişken adı studentId'den dersId'ye değiştirildi
        dt.BolumGuncelle(fakulteId, BolumAd, nid); // Parametre adı dersId olarak güncellendi
        Response.Redirect("Admin_BolumListesi.aspx");
    }
}
