using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class confConta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }

        lblResp.Text = "";
        lblResp2.Text = "";

        txtSenha1.Visible = false;
        txtSenha2.Visible = false;
        btnAlt3.Visible = false;

        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "Senha atual:";

        btnAlt3.Visible = false;
        Button1.Visible = false;
    }
    protected void btnSA_Click(object sender, EventArgs e)
    {
        try
        {

            DataView dv;
            dv = (DataView)sqlBuscar.Select(DataSourceSelectArguments.Empty);

            if (dv.Table.Rows.Count != 0)
            {
                txtSenha1.Visible = true;
                txtSenha2.Visible = true;
                btnAlt3.Visible = true;
                btnSA.Visible = false;
                txtAnt.Visible = false;
                Button1.Visible = true;

                lblResp.Text = "";
                lblResp2.Text = "";
                Label1.Text = "Nova senha:";
                Label2.Text = "Repita a nova senha:";
                Label3.Text = "";
            }
            else
            {
                lblResp.Text = "Senha incorreta!";
                lblResp2.Text = "";
            }
        }
        catch
        {
            lblResp.Text = "Preencha o campo!";
            lblResp2.Text = "";
        }
    }  
    protected void btnAlt3_Click(object sender, EventArgs e)
    {
        try
        {
            string senha1, senha2;
            senha1 = txtSenha1.Text;
            senha2 = txtSenha2.Text;

            if(senha2 == senha1)
            {
                btnAltSenha.Update();
                txtSenha1.Visible = false;
                txtSenha2.Visible = false;
                btnAlt3.Visible = false;

                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "Senha atual:";
                txtAnt.Visible = true;
                btnSA.Visible = true;
                lblResp2.Text = "Senha alterada com sucesso!";
                txtAnt.Text = "";
            }
            else
            {
                Label1.Text = "Nova senha:";
                Label2.Text = "Repita a nova senha:";
                Label3.Text = "";
                btnAlt3.Visible = true;
                txtSenha1.Visible = true;
                txtSenha2.Visible = true;
                lblResp.Text = "Senhas não coincidem!";
                lblResp2.Text = "";
                Button1.Visible = true;
            }
        }
        catch
        {
            Label1.Text = "Nova senha:";
            Label2.Text = "Repita a nova senha:";
            Label3.Text = "";
            btnAlt3.Visible = true;
            txtSenha1.Visible = true;
            txtSenha2.Visible = true;
            Button1.Visible = true;
            lblResp.Text="Preencha os campos!";
            lblResp2.Text = "";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlUpdate.Update();
        Session.Abandon();
        Response.Redirect("LoginADM.aspx");
    }
}
