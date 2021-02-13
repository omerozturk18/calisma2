using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uyeol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=ATOMER\\SQLEXPRESS;Initial Catalog=vtybs123;Integrated Security=True");
        baglanti.Open();
        SqlCommand komut = new SqlCommand("insert into kullanici (k_ad,k_sifre,ad,soyad) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", baglanti);
        komut.ExecuteNonQuery();
        baglanti.Close();
    }
}