using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv;
        dv = (DataView)sqlCarrega.Select(DataSourceSelectArguments.Empty);

        ImageButton1.ImageUrl = "~\\imgCad\\sem-foto.png";
        ImageButton2.ImageUrl = "~\\imgCad\\sem-foto.png";
        ImageButton3.ImageUrl = "~\\imgCad\\sem-foto.png";
       
        if (dv.Table.Rows.Count == 0)
        { }
        else
        {
            ImageButton1.ImageUrl = dv.Table.Rows[0]["img1_imo"].ToString();
            Label1.Text = dv.Table.Rows[0]["nome_imo"].ToString();
            

            if (dv.Table.Rows.Count > 1)
            {
                ImageButton2.ImageUrl = dv.Table.Rows[1]["img1_imo"].ToString();
                Label3.Text = dv.Table.Rows[1]["nome_imo"].ToString();
            }
            if (dv.Table.Rows.Count > 2)
            {
                ImageButton3.ImageUrl = dv.Table.Rows[2]["img1_imo"].ToString();
                Label5.Text = dv.Table.Rows[2]["nome_imo"].ToString();
            }
         
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ImovelINDIVIDUAL.aspx");
    }
    
}