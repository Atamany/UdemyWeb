using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OgrenciEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateBolum();
        }
    }
    private void PopulateBolum()
    {
        string connStr = ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            // Fakulte ve BolumAd sütunlarını birleştiriyoruz
            string query = "SELECT BolumId, BolumAd, Fakulte, FakulteAd, (FakulteAd + ' - ' + BolumAd) AS FakulteBolum FROM Tbl_Bolum Inner Join Tbl_Fakulte On Tbl_Fakulte.FakulteId=Tbl_Bolum.Fakulte";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            // DataTextField olarak birleştirilmiş yeni sütunu kullanıyoruz
            DDLBolum.DataSource = dr;
            DDLBolum.DataTextField = "FakulteBolum";
            DDLBolum.DataValueField = "BolumId";
            DDLBolum.DataBind();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString;

        int selectedBolumId = int.Parse(DDLBolum.SelectedValue);
        int selectedFakulteId;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "SELECT Fakulte FROM Tbl_Bolum WHERE BolumId = @BolumId";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@BolumId", selectedBolumId);
            conn.Open();

            selectedFakulteId = Convert.ToInt32(cmd.ExecuteScalar());
        }

        string cinsiyet = TxtOgrCinsiyetE.Checked ? "Erkek" : TxtOgrCinsiyetK.Checked ? "Kız" : null;
            DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
            dt.OgrenciEkle(TxtOgrTC.Text, TxtOgrAd.Text, TxtOgrSoyad.Text, cinsiyet, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, selectedFakulteId, selectedBolumId);
            Response.Redirect("Admin_OgrenciListesi.aspx");
        
    }

}