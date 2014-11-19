using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


public partial class alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }

        if (Session["verificacaoImo"] != "OK")
        {
            Response.Redirect("REGISTROImovel.aspx");
        }

        if (!IsPostBack)
        {
            txtTitulo.Text = Session["titulo"].ToString();
            txtCid.Text = Session["cidade"].ToString();
            txtBairro.Text = Session["bairro"].ToString();
            txtRua.Text = Session["endereco"].ToString();
            txtNum.Text = Session["num"].ToString();
            txtComp.Text = Session["complemento"].ToString();
            txtEst.Text = Session["estado"].ToString();
            txtValorMerc.Text = Session["valorMerc"].ToString();
            txtValorEst.Text = Session["valorVend"].ToString();
            txtDesc.Text = Session["desc"].ToString();
            Image1.ImageUrl = Session["imgImo1"].ToString();
            Image2.ImageUrl = Session["imgImo2"].ToString();
            Image3.ImageUrl = Session["imgImo3"].ToString();
            txtTpImo.Text = Session["tipo"].ToString();
            txtArea.Text = Session["area"].ToString();

            btnAlterar.Visible = false;
            btnFalse.Visible = true;

            txtTitulo.Enabled = false;
            txtEst.Enabled = false;
            txtTpImo.Enabled = false;
            txtRua.Enabled = false;
            txtNum.Enabled = false;
            txtComp.Enabled = false;
            txtValorMerc.Enabled = false;
            txtValorEst.Enabled = false;
            txtDesc.Enabled = false;
            txtCid.Enabled = false;
            txtBairro.Enabled = false;
            txtArea.Enabled = false;

            lblResp.Text = "";
            lblResp2.Text = "";
        }
    }
    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        try
        {
            sqlImo.UpdateParameters["valorMerc"].DefaultValue = txtValorMerc.Text.Replace(',', '.');
            sqlImo.UpdateParameters["valorEst"].DefaultValue = txtValorEst.Text.Replace(',', '.');

            String nomeArq1, url1;

            nomeArq1 = Path.GetFileName(fuImg1.FileName);

            if (nomeArq1 != "")
            {
                fuImg1.PostedFile.SaveAs(
                    Server.MapPath("\\c2capital\\imgCad\\" + nomeArq1));

                url1 = "~\\imgCad\\" + nomeArq1;

                sqlImo.UpdateParameters["img1"].DefaultValue = url1;
            }
            else
            {
                url1 = Image1.ImageUrl.ToString();

                sqlImo.UpdateParameters["img1"].DefaultValue = url1;
            }

            String nomeArq2, url2;

            nomeArq2 = Path.GetFileName(fuImg2.FileName);

            if (nomeArq2 != "")
            {
                fuImg2.PostedFile.SaveAs(
                    Server.MapPath("\\c2capital\\imgCad\\" + nomeArq2));

                url2 = "~\\imgCad\\" + nomeArq2;

                sqlImo.UpdateParameters["img2"].DefaultValue = url2;
            }
            else
            {
                url2 = Image2.ImageUrl.ToString();

                sqlImo.UpdateParameters["img2"].DefaultValue = url2;
            }

            String nomeArq3, url3;

            nomeArq3 = Path.GetFileName(fuImg3.FileName);

            if (nomeArq3 != "")
            {
                fuImg3.PostedFile.SaveAs(
                    Server.MapPath("\\c2capital\\imgCad\\" + nomeArq3));

                url3 = "~\\imgCad\\" + nomeArq3;

                sqlImo.UpdateParameters["img3"].DefaultValue = url3;
            }
            else
            {
                url3 = Image3.ImageUrl.ToString();

                sqlImo.UpdateParameters["img3"].DefaultValue = url3;

            }

            sqlImo.Update();

            txtTitulo.Enabled = false;
            txtCid.Enabled = false;
            txtBairro.Enabled = false;
            txtRua.Enabled = false;
            txtNum.Enabled = false;
            txtComp.Enabled = false;
            txtValorMerc.Enabled = false;
            txtValorEst.Enabled = false;
            txtDesc.Enabled = false;
            txtEst.Enabled = false;
            txtTpImo.Enabled = false;
            txtArea.Enabled = false;


            btnAlterar.Visible = false;
            btnFalse.Visible = true;

            DataView dv;

            dv = (DataView)sqlNImo.Select(DataSourceSelectArguments.Empty);

            txtTitulo.Text = dv.Table.Rows[0]["nome_imo"].ToString();
            txtRua.Text = dv.Table.Rows[0]["endereco_imo"].ToString();
            txtNum.Text = dv.Table.Rows[0]["num_imo"].ToString();
            txtComp.Text = dv.Table.Rows[0]["complemento_imo"].ToString();
            txtEst.Text = dv.Table.Rows[0]["estado_imo"].ToString();
            txtValorMerc.Text = dv.Table.Rows[0]["valormerc_imo"].ToString();
            txtValorEst.Text = dv.Table.Rows[0]["valorvenda_imo"].ToString();
            txtDesc.Text = dv.Table.Rows[0]["descricao_imo"].ToString();
            Image1.ImageUrl = dv.Table.Rows[0]["img1_imo"].ToString();
            Image2.ImageUrl = dv.Table.Rows[0]["img2_imo"].ToString();
            Image3.ImageUrl = dv.Table.Rows[0]["img3_imo"].ToString();
            txtTpImo.Text = dv.Table.Rows[0]["tipo_imo"].ToString();
            txtCid.Text = dv.Table.Rows[0]["cidade_imo"].ToString();
            txtBairro.Text = dv.Table.Rows[0]["bairro_imo"].ToString();
            txtArea.Text = dv.Table.Rows[0]["area_imo"].ToString();

            lblResp2.Text = "Alterado com sucesso!";
            lblResp.Text = "";
        }
        catch
        {
            lblResp.Text = "Preencha os campos!";
            lblResp2.Text = "";
        }
    }

    protected void btnFalse_Click(object sender, EventArgs e)
    {
        txtTitulo.Enabled = true;
        txtCid.Enabled = true;
        txtBairro.Enabled = true;
        txtRua.Enabled = true;
        txtNum.Enabled = true;
        txtComp.Enabled = true;
        txtValorMerc.Enabled = true;
        txtValorEst.Enabled = true;
        txtDesc.Enabled = true;
        btnAlterar.Visible = true;
        btnFalse.Visible = false;
        txtArea.Enabled = true;

        lblResp2.Text = "";
        lblResp.Text = "";
    }
    protected void btnVoltar_Click(object sender, EventArgs e)
    {
        Response.Redirect("REGISTROImovel.aspx");
    }
}