using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"]!=null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=ATOMER\\SQLEXPRESS;Initial Catalog=vtybs123;Integrated Security=True");
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select * from kullanici where k_ad='" +TextBox1.Text+"' and k_sifre='"+TextBox2.Text+"'",baglanti);
        SqlDataReader oku = komut.ExecuteReader();

       
        if (oku.Read())
        {
            Session.Add("kullanici", oku[0].ToString());
            Session.Add("ad", oku[2].ToString());
            Session.Add("soyad", oku[3].ToString());
            if (oku[4].ToString()=="admin")
            {
                Session.Add("admin", oku[4].ToString());
                Response.Redirect("panel.aspx");
            }
            
            Response.Redirect("index.aspx");
        }
        else
        {
            Label1.Text = "Giriş Başarısız";
        }
        baglanti.Close();
    }
}