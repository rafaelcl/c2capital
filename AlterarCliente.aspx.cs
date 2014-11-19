using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


public partial class alterarCli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }

        if (Session["verificacaoCli"] != "OK")
        {
            Response.Redirect("REGISTROCliente.aspx");
        }

        if (txtNome.Text == "")
        {
            DataView dv;

            dv = (DataView)sqlAltCli.Select(DataSourceSelectArguments.Empty);

            txtNome.Text = dv.Table.Rows[0]["nome_cli"].ToString();
            txtBairro.Text = dv.Table.Rows[0]["bai_cli"].ToString();
            txtCel.Text = dv.Table.Rows[0]["cel_cli"].ToString();
            txtCEP.Text = dv.Table.Rows[0]["cep_cli"].ToString();
            txtCidade.Text = dv.Table.Rows[0]["cid_cli"].ToString();
            txtComp.Text = dv.Table.Rows[0]["comp_cli"].ToString();
            txtCPF.Text = dv.Table.Rows[0]["cpf_cli"].ToString();
            txtNum.Text = dv.Table.Rows[0]["num_cli"].ToString();
            txtRua.Text = dv.Table.Rows[0]["rua_cli"].ToString();
            txtTel.Text = dv.Table.Rows[0]["tel_cli"].ToString();
            ddlUF.Text = dv.Table.Rows[0]["est_cli"].ToString();
            ddlSexo.SelectedValue = dv.Table.Rows[0]["sexo_cli"].ToString();
        }  
    }
    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        sqlAltCli.Update();

        txtBairro.Text = "";
        txtCel.Text = "";
        txtCEP.Text = "";
        txtCidade.Text = "";
        txtComp.Text = "";
        txtCPF.Text = "";
        txtNome.Text = "";
        txtNum.Text = "";
        txtRua.Text = "";
        txtTel.Text = "";
        ddlSexo.Text = "--";
        ddlUF.Text = "--";
        lblResp.Text = "Alterado com sucesso!";
    }
    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("REGISTROCliente.aspx");
    }
}