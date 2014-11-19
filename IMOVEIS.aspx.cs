using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class noticias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);

        lbltitle1.Text = "";
        lblend1.Text = "";
        lbldesc1.Text = "";
        lblCod1.Text = "";
        img1.Visible = false;
        

        lbltitle2.Text = "";
        lblend2.Text = "";
        lbldesc2.Text = "";
        lblCod2.Text = "";
        img2.Visible = false;

        lbltitle3.Text = "";
        lblend3.Text = "";
        lbldesc3.Text = "";
        lblCod3.Text = "";
        img3.Visible = false;

        lbltitle4.Text = "";
        lblend4.Text = "";
        lbldesc4.Text = "";
        lblCod4.Text = "";
        img4.Visible = false;

        if (dv.Table.Rows.Count == 0)
        {}
        else
        {
            string cid1, est1,tp1,cod1;
            cid1 = dv.Table.Rows[0]["cidade_imo"].ToString();
            est1 = dv.Table.Rows[0]["estado_imo"].ToString();
            tp1 = dv.Table.Rows[0]["tipo_imo"].ToString();
            cod1 = dv.Table.Rows[0]["id_imo"].ToString();

            lbltitle1.Text = dv.Table.Rows[0]["nome_imo"].ToString() + " - Código " + cod1;
            lblend1.Text = tp1 + " / " + cid1 + " - "+ est1;
            lbldesc1.Text = dv.Table.Rows[0]["descricao_imo"].ToString() + "..";
            img1.Visible = true;
            img1.ImageUrl = dv.Table.Rows[0]["img1_imo"].ToString();

            if(dv.Table.Rows.Count > 1)
            {
            lbltitle2.Text = dv.Table.Rows[1]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[1]["id_imo"].ToString();
            lblend2.Text = dv.Table.Rows[1]["tipo_imo"].ToString() + " / " + dv.Table.Rows[1]["cidade_imo"].ToString() + " - " + dv.Table.Rows[1]["estado_imo"].ToString();
            lbldesc2.Text = dv.Table.Rows[1]["descricao_imo"].ToString() + "..";
                img2.Visible = true;
            img2.ImageUrl = dv.Table.Rows[1]["img1_imo"].ToString();
            }

            if(dv.Table.Rows.Count > 2)
            {
            lbltitle3.Text = dv.Table.Rows[2]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[2]["id_imo"].ToString();
            lblend3.Text = dv.Table.Rows[2]["tipo_imo"].ToString() + " / " + dv.Table.Rows[2]["cidade_imo"].ToString() + " - " + dv.Table.Rows[2]["estado_imo"].ToString();
            lbldesc3.Text = dv.Table.Rows[2]["descricao_imo"].ToString() + "..";
                img3.Visible = true;
            img3.ImageUrl = dv.Table.Rows[2]["img1_imo"].ToString();
            }

            if(dv.Table.Rows.Count > 3)
            {
            lbltitle4.Text = dv.Table.Rows[3]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[3]["id_imo"].ToString();
            lblend4.Text = dv.Table.Rows[3]["tipo_imo"].ToString() + " / " + dv.Table.Rows[3]["cidade_imo"].ToString() + " - " + dv.Table.Rows[3]["estado_imo"].ToString();
            lbldesc4.Text = dv.Table.Rows[3]["descricao_imo"].ToString() + "..";
                img4.Visible = true;
            img4.ImageUrl = dv.Table.Rows[3]["img1_imo"].ToString();
            }

            if (dv.Table.Rows.Count > 4)
            {
                hl1.NavigateUrl = "IMOVEIS.aspx";
                hl1.Text = "<< 1";
                hl2.NavigateUrl = "IMOVEIS2.aspx";
                hl2.Text = "2";
                hl3.NavigateUrl = "";
                hl3.Text = "";

                Session["IMOVEL2"] = "OK";

                if (dv.Table.Rows.Count > 8)
                {
                    hl3.NavigateUrl = "IMOVEIS3.aspx";
                    hl3.Text = "3 >>";
                    Session["IMOVEL3"] = "OK";
                }
            }
        }
        
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("IMOVEIS.aspx");
    }
    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[0]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img2_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[1]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img3_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[2]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img4_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[3]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
}