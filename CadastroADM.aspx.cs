using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cadADM : System.Web.UI.Page
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
        if (this.txtimgcode.Text == this.Session["CaptchaImageText"].ToString())
        {               
            lblmsg.Text = "Excelente!";

        try
        {
            DataView dv;
            dv = (DataView)sqlBuscar.Select(DataSourceSelectArguments.Empty);

            if (dv.Table.Rows.Count == 0)
            {
                sqlCadAdm.Insert();
                Label2.Text = "Cadastrado com sucesso!";

                txtLogin.Text = "";                
                txtNome.Text = "";
                txtRepetir.Text = "";
                txtEmail.Text = "";
                txtimgcode.Text = "";
                lblmsg.Text = "";
             }
            else
            {
                Label1.Text = "Login já cadastrado!";
                Label2.Text = "";
                lblmsg.Text = "";
            }

        }
        catch
        {
            lblmsg.Text = "Escreva novamente!";
            Label2.Text = "";
            Label1.Text = "";
        }

        }

        this.txtimgcode.Text = "";
    }
}
