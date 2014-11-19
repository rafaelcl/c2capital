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
        if (Session["COMERCIAL2"] != "OK")
        {
            Response.Redirect("COMERCIAL2.aspx");
        }
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

        if (dv.Table.Rows.Count == 4)
        { }
        else
        {
            string cid1, est1,tip1,cod1;
            cid1 = dv.Table.Rows[4]["cidade_imo"].ToString();
            est1 = dv.Table.Rows[4]["estado_imo"].ToString();
            tip1 = dv.Table.Rows[4]["tipo_imo"].ToString();
            cod1 = dv.Table.Rows[4]["id_imo"].ToString();

            lbltitle1.Text = dv.Table.Rows[4]["nome_imo"].ToString() + " - Código " + cod1;
            lblend1.Text = tip1 + " / " + cid1 + " - " + est1;
            lbldesc1.Text = dv.Table.Rows[4]["descricao_imo"].ToString() + "..";
            img1.Visible = true;
            img1.ImageUrl = dv.Table.Rows[4]["img1_imo"].ToString();

            if (dv.Table.Rows.Count > 5)
            {
                lbltitle2.Text = dv.Table.Rows[5]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[5]["id_imo"].ToString();
                lblend2.Text = dv.Table.Rows[5]["tipo_imo"].ToString() + " / " + dv.Table.Rows[5]["cidade_imo"].ToString() + " - " + dv.Table.Rows[5]["estado_imo"].ToString();
                lbldesc2.Text = dv.Table.Rows[5]["descricao_imo"].ToString() + "..";
                img2.Visible = true;
                img2.ImageUrl = dv.Table.Rows[5]["img1_imo"].ToString();
            }

            if (dv.Table.Rows.Count > 6)
            {
                lbltitle3.Text = dv.Table.Rows[6]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[6]["id_imo"].ToString();
                lblend3.Text = dv.Table.Rows[6]["tipo_imo"].ToString() + " / " + dv.Table.Rows[6]["cidade_imo"].ToString() + " - " + dv.Table.Rows[6]["estado_imo"].ToString();
                lbldesc3.Text = dv.Table.Rows[6]["descricao_imo"].ToString() + "..";
                img3.Visible = true;
                img3.ImageUrl = dv.Table.Rows[6]["img1_imo"].ToString();
            }

            if (dv.Table.Rows.Count > 7)
            {
                lbltitle4.Text = dv.Table.Rows[7]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[7]["id_imo"].ToString();
                lblend4.Text = dv.Table.Rows[7]["tipo_imo"].ToString() + " / " + dv.Table.Rows[7]["cidade_imo"].ToString() + " - " + dv.Table.Rows[7]["estado_imo"].ToString();
                lbldesc4.Text = dv.Table.Rows[7]["descricao_imo"].ToString() + "..";
                img4.Visible = true;
                img4.ImageUrl = dv.Table.Rows[7]["img1_imo"].ToString();
            }

            hl1.NavigateUrl = "COMERCIAL.aspx";
            hl1.Text = "<< 1";
            hl2.NavigateUrl = "COMERCIAL2.aspx";
            hl2.Text = "2";

            if (dv.Table.Rows.Count > 1)
            {
                hl3.NavigateUrl = "COMERCIAL3.aspx";
                hl3.Text = "3 >>";
                Session["COMERCIAL3"] = "OK";
            }

        }
        
        
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("COMERCIAL.aspx");
    }
    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[4]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img2_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[5]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img3_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[6]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img4_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[7]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
}