using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cadCli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
            DataView dv;

            dv = (DataView)sqlBuscar.Select(DataSourceSelectArguments.Empty);


            if (dv.Table.Rows.Count == 0)
            {
                sqlCadCli.Insert();

                Label1.Text = "";
                Label2.Text = "Cadastro com sucesso!";

                txtNome.Text = "";
                ddlSexo.Text = "";
                txtCPF.Text = "";
                txtCel.Text = "";
                txtTel.Text = "";
                txtCEP.Text = "";
                txtRua.Text = "";
                txtNum.Text = "";
                txtBai.Text = "";
                txtComp.Text = "";
                ddlUF.Text = "";
                txtCid.Text = "";
                ddlSexo.Text = "";
                ddlUF.Text = "--";
                ddlSexo.Text = "--";
            }
            else
            {
                Label1.Text = "CPF já cadastrado!";
                Label2.Text = "";
            }               
    }
}