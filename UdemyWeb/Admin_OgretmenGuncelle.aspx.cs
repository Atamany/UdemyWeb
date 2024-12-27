using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OgretmenGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PopulateDersler();
            try
            {
                int nid = Convert.ToInt32(Request.QueryString["OgrtId"].ToString());
                DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
                TxtOgrt.Text = dt.OgretmenSec(nid)[0].OgrtAdSoyad.ToString();
                TxtOgrtDers.SelectedValue = Convert.ToInt32(dt.OgretmenSec(nid)[0].OgrtBrans).ToString();
                TxtOgrtSifre.Text = dt.OgretmenSec(nid)[0].OgrtSifre.ToString();
            }
            catch { }
        }
    }
    private void PopulateDersler()
    {
        string connStr = ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "SELECT DersId, DersAd FROM Tbl_Dersler";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            TxtOgrtDers.DataSource = dr;
            TxtOgrtDers.DataTextField = "DersAd"; // Kullanıcıya gösterilecek alan
            TxtOgrtDers.DataValueField = "DersId"; // Arka planda kullanılacak ID
            TxtOgrtDers.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string OgrtAdSoyad, Sifre;
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
        int nid = Convert.ToInt32(Request.QueryString["OgrtId"].ToString());
        OgrtAdSoyad = TxtOgrt.Text;
        Sifre = TxtOgrtSifre.Text;
        string selectedValue = TxtOgrtDers.SelectedValue;
        int dersId = int.Parse(selectedValue); // Değişken adı studentId'den dersId'ye değiştirildi
        dt.OgretmenGuncelle(OgrtAdSoyad, dersId, Sifre, nid); // Parametre adı dersId olarak güncellendi
        Response.Redirect("Admin_OgretmenListesi.aspx");
    }
}