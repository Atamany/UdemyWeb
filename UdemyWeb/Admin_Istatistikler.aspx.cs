using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Istatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
        TextBox1.Text = "Toplam Öğrenci Sayısı: " + dt.Istatistik1().ToString();
        TextBox2.Text = "Toplam Öğretmen Sayısı: " + dt.Istatistik2().ToString();
        TextBox3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3().ToString();
        TextBox4.Text = "En Başarılı Ders: " + dt.Istatistik4().ToString();
        TextBox5.Text = "Toplam Atılan Mesaj Sayısı: " + dt.Istatistik5().ToString();
        TextBox6.Text = "Sistemdeki Duyuru Sayısı: " + dt.Istatistik6().ToString();
    }
}