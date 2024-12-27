using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OgretmenEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateDersler();
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
        int selectedDersId = int.Parse(TxtOgrtDers.SelectedValue);
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
        dt.OgretmenEkle(TxtOgrt.Text, selectedDersId, TxtOgrtSifre.Text);
        Response.Redirect("Admin_OgretmenListesi.aspx");
    }
}