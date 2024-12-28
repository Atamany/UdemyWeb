using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=YIGITATAMANPC;Initial Catalog=UdemySiteDb;Integrated Security=True;TrustServerCertificate=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * From Tbl_Ogrenci where OgrId=@p1 and OgrSifre=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("Numara", TxtNumara.Text);
            FormsAuthentication.SetAuthCookie(TxtNumara.Text, false);

            Response.Redirect("Ogrenci_OgrenciProfil.aspx?Numara=" + TxtNumara.Text);
        }
        else { TxtSifre.Text = "Hatalı Şifre!"; }
        baglanti.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * From Tbl_Ogretmen where OgrtId=@p1 and OgrtSifre=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("Numara", TxtNumara.Text);
            FormsAuthentication.SetAuthCookie(TxtNumara.Text, false);
            Response.Redirect("Ogretmen_OgretmenProfil.aspx?Numara=" + TxtNumara.Text);
        }
        else { TxtSifre.Text = "Hatalı Şifre!"; }
        baglanti.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * From Tbl_Admin where Numara=@p1 and Sifre=@p2", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("Numara", TxtNumara.Text);
            FormsAuthentication.SetAuthCookie(TxtNumara.Text, false);
            Response.Redirect("Admin_OgrenciListesi.aspx?Numara=" + TxtNumara.Text);
        }
        else { TxtSifre.Text = "Hatalı Şifre!"; }
        baglanti.Close();
    }
}