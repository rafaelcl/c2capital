using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cadTpIMOVEL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        try
        {
            DataView dv;
            dv = (DataView)sqlBuscar.Select(DataSourceSelectArguments.Empty);

            if (dv.Table.Rows.Count == 0)
            {
                
                sqlTpImo.Insert();
                txtNovo.Text = "";
                lblResp.Text = "";
                lblResp2.Text = "Cadastrado com sucesso!";
                GridView1.DataBind();
            }

            else
            {
                lblResp.Text = "Já está cadastrado!";
                lblResp2.Text = "";
                txtNovo.Text = "";
            }

        }
        catch
        {
            lblResp.Text = "Preencha o campo!";
            lblResp2.Text = "";
        }
    }
}