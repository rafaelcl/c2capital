using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }

        if (Session["verificacaoTpImo"] != "OK")
        {
            Response.Redirect("REGISTROTipoImovel.aspx");
        }

        if (txtTpImo.Text == "")
        {
            txtTpImo.Text = Session["tipo"].ToString();
        }
      
    }
    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlImo.Update();

        txtTpImo.Text = "";
        lblResp.Text = "Alterado com sucesso!";
    }
    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("REGISTROTipoImovel.aspx");
    }
}