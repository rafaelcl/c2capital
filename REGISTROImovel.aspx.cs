using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class regImo : System.Web.UI.Page
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
                sqlImo.DeleteParameters["cod"].DefaultValue = linha.Cells[2].Text;
                sqlImo.Delete();
            }
        }
        sqlImo.DataBind();
        GridView1.DataBind(); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["codImo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Session["verificacaoImo"] = "OK";

        DataView dv;
        dv = (DataView)sqlUpdate.Select(DataSourceSelectArguments.Empty);
        Session["desc"] = dv.Table.Rows[0]["descricao_imo"].ToString();
        Session["imgImo1"] = dv.Table.Rows[0]["img1_imo"].ToString();
        Session["imgImo2"] = dv.Table.Rows[0]["img2_imo"].ToString();
        Session["imgImo3"] = dv.Table.Rows[0]["img3_imo"].ToString();
        Session["valorVend"] = dv.Table.Rows[0]["valorvenda_imo"].ToString();
        Session["valorMerc"] = dv.Table.Rows[0]["valormerc_imo"].ToString();
        Session["complemento"] = dv.Table.Rows[0]["complemento_imo"].ToString();
        Session["titulo"] = dv.Table.Rows[0]["nome_imo"].ToString();
        Session["cidade"] = dv.Table.Rows[0]["cidade_imo"].ToString();
        Session["bairro"] = dv.Table.Rows[0]["bairro_imo"].ToString();
        Session["endereco"] = dv.Table.Rows[0]["endereco_imo"].ToString();
        Session["num"] = dv.Table.Rows[0]["num_imo"].ToString();
        Session["complemento"] = dv.Table.Rows[0]["complemento_imo"].ToString();
        Session["estado"] = dv.Table.Rows[0]["estado_imo"].ToString();
        Session["area"] = dv.Table.Rows[0]["area_imo"].ToString();
        Session["tipo"] = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;

        Response.Redirect("AlterarImovel.aspx");
    }
}