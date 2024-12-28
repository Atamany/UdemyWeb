using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogretmen_GidenMesajlar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Numara = Session["Numara"].ToString();

        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        Repeater1.DataSource = dt.OgrenciGidenMesajlar(Numara);
        Repeater1.DataBind();
    }
    protected string GetKullaniciAdiByNumara(object numara)
    {
        int Numara = Convert.ToInt32(numara);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UdemySiteDbConnectionString"].ConnectionString))
        {
            conn.Open();
            if (0 < Numara && Numara <= 1000)
            {

                SqlCommand cmd = new SqlCommand("SELECT OgrtAdSoyad FROM Tbl_Ogretmen WHERE OgrtId = @OgrtId", conn);
                cmd.Parameters.AddWithValue("@OgrtId", Numara);
                object result = cmd.ExecuteScalar();
                return result != null ? result.ToString() : "Bilinmiyor";
            }
            else if (Numara > 1000)
            {
                SqlCommand cmd = new SqlCommand("SELECT (OgrAd+' '+OgrSoyad) AS Öğrenci FROM Tbl_Ogrenci WHERE OgrId = @OgrId", conn);
                cmd.Parameters.AddWithValue("@OgrId", Numara);
                object result = cmd.ExecuteScalar();
                return result != null ? result.ToString() : "Bilinmiyor";
            }
            else if (Numara == 0)
            {
                object result = "Admin";
                return result != null ? result.ToString() : "Bilinmiyor";
            }
            else
            {
                object result = "Bilinmiyor!";
                return result != null ? result.ToString() : "Bilinmiyor";
            }
        }
    }
}