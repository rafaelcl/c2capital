using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class imovelInd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataView dv;
            dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);

           if (dv.Table.Rows.Count == 0)
            {
                Response.Redirect("IMOVEIS.aspx");
            }
            else
            {
                lblTitle.Text = dv.Table.Rows[0]["nome_imo"].ToString();
                lblTp.Text = dv.Table.Rows[0]["tipo_imo"].ToString();
                lblEst.Text = dv.Table.Rows[0]["estado_imo"].ToString();
                lblCid.Text = dv.Table.Rows[0]["cidade_imo"].ToString();
                lblBai.Text = dv.Table.Rows[0]["bairro_imo"].ToString();
                lblEnd.Text = dv.Table.Rows[0]["endereco_imo"].ToString();
                lblNum.Text = dv.Table.Rows[0]["num_imo"].ToString();
                lblComp.Text = " - " + dv.Table.Rows[0]["complemento_imo"].ToString();
                lblPreco.Text = dv.Table.Rows[0]["valorvenda_imo"].ToString();
                lblValorMerc.Text = dv.Table.Rows[0]["valormerc_imo"].ToString();
                lblText.Text = dv.Table.Rows[0]["descricao_imo"].ToString();
                img1.ImageUrl= dv.Table.Rows[0]["img1_imo"].ToString();
                img2.ImageUrl = dv.Table.Rows[0]["img2_imo"].ToString();
                img3.ImageUrl = dv.Table.Rows[0]["img3_imo"].ToString();
                lblArea.Text = dv.Table.Rows[0]["area_imo"].ToString();
                lblCod.Text = dv.Table.Rows[0]["id_imo"].ToString();
                    
           }
        }
        catch
       {
            Response.Redirect("IMOVEIS.aspx");
       }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CONTATO1.aspx");
    }
}