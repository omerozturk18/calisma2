using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"].ToString ()!= "admin")
        {
            Response.Redirect("index.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cs vt = new cs();
        vt.guncelle("Onaylandı",Convert.ToInt32( TextBox1.Text));
        Response.Redirect("panel.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cs vt = new cs();
        vt.sil( Convert.ToInt32(TextBox2.Text));
        Response.Redirect("panel.aspx");
    }
}