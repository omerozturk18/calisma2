﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sepet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["kullanici"] == null)
        {
            Response.Redirect("giris.aspx");
        }
        Label1.Text = Session["kullanici"].ToString();
    }
}