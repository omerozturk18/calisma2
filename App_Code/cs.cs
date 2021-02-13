using System;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;

public class cs
{
    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["vtConnectionString"].ConnectionString);
        baglanti.Open();
        return baglanti;
        
    }


    public void kayitEkle(string k_ad, string ad, string soyad, string m_mantar, string m_zeytin, string e_kasar, string e_sucuk, string e_aci, string not, string adres, string durum, string fiyat)
    {

        SqlConnection baglan = this.baglan();
        SqlCommand komut = new SqlCommand();
        komut.Connection = baglan;
        komut.CommandText = "insert into pizza (k_ad,ad,soyad,m_mantar,m_zeytin,e_kasar,e_sucuk,e_aci,aciklama,adres,durum,fiyat) values ('"+k_ad+ "','" + ad + "','" + soyad + "','" + m_mantar + "','" + m_zeytin + "','" + e_kasar + "','" + e_sucuk + "','" + e_aci + "','" + not + "','" + adres + "','" + durum + "','" + fiyat + "')";
        komut.ExecuteNonQuery();
        baglan.Close();
     
    
    }
    public void guncelle(string durum, int kimlik)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand komut = new SqlCommand();
        komut.Connection = baglan;
        komut.CommandText = "update pizza set durum=@durum where Kimlik=@kimlik";
        komut.Parameters.AddWithValue("@durum", durum);
        komut.Parameters.AddWithValue("@kimlik", kimlik);
        komut.ExecuteNonQuery();
        baglan.Close();
    }
    public void sil( int kimlik)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand komut = new SqlCommand();
        komut.Connection = baglan;
        komut.CommandText = "delete from pizza  where Kimlik=@kimlik";
        komut.Parameters.AddWithValue("@kimlik", kimlik);
        komut.ExecuteNonQuery();
        baglan.Close();
    }
}