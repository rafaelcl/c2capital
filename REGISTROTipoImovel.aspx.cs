using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class regTpImo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }
    }
    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow linha in GridView1.Rows)
        {
            CheckBox op;

            op = (CheckBox)linha.FindControl("chkOP");

            if (op.Checked == true)
            {
                sqlUpdate.UpdateParameters["cod"].DefaultValue = linha.Cells[2].Text;
                sqlUpdate.Update();
            }
        }
        sqlTp.DataBind();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["verificacaoTpImo"] = "OK";
        Session["codTpImo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Session["tipo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;

        Response.Redirect("AlterarTipoImovel.aspx");
    }
}