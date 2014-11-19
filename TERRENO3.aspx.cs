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
        if (Session["TERRENO3"] != "OK")
        {
            Response.Redirect("TERRENO3.aspx");
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

        if (dv.Table.Rows.Count == 8)
        { }
        else
        {
            string cid1, est1,tip1,cod1;
            cid1 = dv.Table.Rows[8]["cidade_imo"].ToString();
            est1 = dv.Table.Rows[8]["estado_imo"].ToString();
            tip1 = dv.Table.Rows[8]["tipo_imo"].ToString();
            cod1 = dv.Table.Rows[8]["id_imo"].ToString();

            lbltitle1.Text = dv.Table.Rows[8]["nome_imo"].ToString() + " - Código " + cod1;
            lblend1.Text = tip1 + " / " + cid1 + " - " + est1;
            lbldesc1.Text = dv.Table.Rows[8]["descricao_imo"].ToString() + "..";
            img1.Visible = true;
            img1.ImageUrl = dv.Table.Rows[8]["img1_imo"].ToString();

            if (dv.Table.Rows.Count > 9)
            {
                lbltitle2.Text = dv.Table.Rows[9]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[9]["id_imo"].ToString();
                lblend2.Text = dv.Table.Rows[9]["tipo_imo"].ToString() + " / " + dv.Table.Rows[9]["cidade_imo"].ToString() + " - " + dv.Table.Rows[9]["estado_imo"].ToString();
                lbldesc2.Text = dv.Table.Rows[9]["descricao_imo"].ToString() + "..";
                img2.Visible = true;
                img2.ImageUrl = dv.Table.Rows[9]["img1_imo"].ToString();
            }

            if (dv.Table.Rows.Count > 10)
            {
                lbltitle3.Text = dv.Table.Rows[10]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[10]["id_imo"].ToString();
                lblend3.Text = dv.Table.Rows[10]["tipo_imo"].ToString() + " / " + dv.Table.Rows[10]["cidade_imo"].ToString() + " - " + dv.Table.Rows[10]["estado_imo"].ToString();
                lbldesc3.Text = dv.Table.Rows[10]["descricao_imo"].ToString() + "..";
                img3.Visible = true;
                img3.ImageUrl = dv.Table.Rows[10]["img1_imo"].ToString();
            }

            if (dv.Table.Rows.Count > 11)
            {
                lbltitle4.Text = dv.Table.Rows[11]["nome_imo"].ToString() + " - Código " + dv.Table.Rows[11]["id_imo"].ToString();
                lblend4.Text = dv.Table.Rows[11]["tipo_imo"].ToString() + " / " + dv.Table.Rows[11]["cidade_imo"].ToString() + " - " + dv.Table.Rows[11]["estado_imo"].ToString();
                lbldesc4.Text = dv.Table.Rows[11]["descricao_imo"].ToString() + "..";
                img4.Visible = true;
                img4.ImageUrl = dv.Table.Rows[11]["img1_imo"].ToString();
            }

            hl1.NavigateUrl = "TERRENO.aspx";
            hl1.Text = "<< 1";
            hl2.NavigateUrl = "TERRENO2.aspx";
            hl2.Text = "2";

            if (dv.Table.Rows.Count > 1)
            {
                hl3.NavigateUrl = "TERRENO3.aspx";
                hl3.Text = "3 >>";
                Session["TERRENO3"] = "OK";
            }

        }
        
        
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("TERRENO.aspx");
    }
    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[8]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img2_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[9]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img3_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[10]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void img4_Click(object sender, ImageClickEventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlImo.Select(DataSourceSelectArguments.Empty);
        Session["codImovel"] = dv.Table.Rows[11]["id_imo"].ToString();
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
}