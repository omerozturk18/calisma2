using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sampiyonmenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] == null)
        {
            Button1.Visible = false;
            Label3.Text = "Satın Alma Yapabilmek İçin Lütfen Üye Olunuz";
        }

    }
    string aci = "hayır",sucuk="hayır",kasar="hayır",mantar="evet",zeytin="evet";
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text=="2 Adet")
        {
            Label1.Text = "53,80";
            Label2.Text = " TL";

        }
        if (DropDownList1.SelectedItem.Text == "1 Adet")
        {
            Label1.Text = "26,90";
            Label2.Text = " TL";
        }
        if (DropDownList1.SelectedItem.Text == "3 Adet")
        {
            Label1.Text = "80,70";
            Label2.Text = " TL";
          
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        extra();
         cs vt = new cs();
     
        vt.kayitEkle(Session["kullanici"].ToString(), Session["ad"].ToString(), Session["soyad"].ToString(), mantar,zeytin,aci, kasar, sucuk, TextArea1.Text,adres.Text,"Onay Bekliyor",Label1.Text);
        Response.Redirect("sepet.aspx");
    }

    private void extra()
    {
        if (CheckBox1.Checked == true)
        {
            Label1.Text = (Convert.ToDouble(Label1.Text) + 2).ToString();
            aci = "evet";
        }   
        if (CheckBox2.Checked == true)
        {
            Label1.Text = (Convert.ToDouble(Label1.Text) + 2).ToString();
            sucuk = "evet";
        }
        if (CheckBox3.Checked == true)
        {
            Label1.Text = (Convert.ToDouble(Label1.Text) + 2).ToString();
            kasar = "evet";

        }
        if (CheckBox4.Checked == true)
        {
      
            mantar = "hayır";
        }
        if (CheckBox5.Checked == true)
        {
           
            zeytin = "hayır";

        }
    }

  
}
