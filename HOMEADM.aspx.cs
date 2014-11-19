using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class homeAdm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }

        
        if(Session["Nome"] != null)
        {
            lblNome.Text = Session["Nome"].ToString();
        }
        else
        {
            lblNome.Text = "";
        }  
    }
}