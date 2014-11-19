using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] == "OK")
        {
            Response.Redirect("HOMEADM.aspx");
        }
    }
    protected void btnConect_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv;
            dv = (DataView)sqlLogin.Select(DataSourceSelectArguments.Empty);

            if (dv.Table.Rows.Count == 0)
            {
                txtLogin.Text = "";
                txtSenha.Text = "";
                lblErro.Text = "Administrador não cadastrado!";
            }

            else
            {
                Session["AdmConect"] = "OK";
                Session["codAdm"] = dv.Table.Rows[0]["id_adm"].ToString();
                Session["Nome"] = dv.Table.Rows[0]["nome_adm"].ToString();
                Response.Redirect("HOMEADM.aspx");
            }

        }
        catch
        {
           lblErro.Text = "Preencha os campos!";
        }
    }
    protected void lbntEsqueceuSenha_Click(object sender, EventArgs e)
    {
        Response.Redirect("EsqueceuSenha.aspx");
    }
}