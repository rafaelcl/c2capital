using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class cadIMOVEL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdmConect"] != "OK")
        {
            Response.Redirect("LoginADM.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
         { 
             DataView dv;
             dv = (DataView)sqlBuscar.Select(DataSourceSelectArguments.Empty);

             if (dv.Table.Rows.Count == 0)
             {
                 
                 sqlImo.InsertParameters["valormerc"].DefaultValue = txtValorMerc.Text.Replace(',', '.');
                 sqlImo.InsertParameters["valorvend"].DefaultValue = txtValorVend.Text.Replace(',', '.');
                 

                 String nomearq1, url1;
                 nomearq1 = Path.GetFileName(fuImg1.FileName);

                 if (nomearq1 != "")
                 {
                     fuImg1.SaveAs(Server.MapPath("\\c2capital\\imgCad\\" + nomearq1));
                     url1 = "~\\imgCad\\" + nomearq1;
                     sqlImo.InsertParameters["img1"].DefaultValue = url1;
                 }
                 else
                 {
                     url1 = "~\\imgCad\\sem-foto.png";
                     sqlImo.InsertParameters["img1"].DefaultValue = url1;
                 }
                 

                 String nomearq2, url2;
                 nomearq2 = Path.GetFileName(fuImg2.FileName);

                 if (nomearq2 != "")
                 {
                     fuImg2.SaveAs(Server.MapPath("\\c2capital\\imgCad\\" + nomearq2));
                     url2 = "~\\imgCad\\" + nomearq2;
                     sqlImo.InsertParameters["img2"].DefaultValue = url2;
                 }
                 else
                 {
                     url2 = "~\\imgCad\\sem-foto.png";
                     sqlImo.InsertParameters["img2"].DefaultValue = url2;
                 }
                 

                 String nomearq3, url3;
                 nomearq3 = Path.GetFileName(fuImg3.FileName);

                 if (nomearq3 != "")
                 {
                     fuImg3.SaveAs(Server.MapPath("\\c2capital\\imgCad\\" + nomearq3));
                     url3 = "~\\imgCad\\" + nomearq3;
                     sqlImo.InsertParameters["img3"].DefaultValue = url3;
                 }
                 else
                 {
                     url3 = "~\\imgCad\\sem-foto.png";
                     sqlImo.InsertParameters["img3"].DefaultValue = url3;
                 }

                 
                 sqlImo.InsertParameters["valormerc"].DefaultValue = txtValorMerc.Text.Replace(',', '.');
                 sqlImo.InsertParameters["valorvend"].DefaultValue = txtValorVend.Text.Replace(',', '.');
                 sqlImo.Insert();
                 lblResp2.Text = "Cadastrado com sucesso!";
                 lblResp.Text = "";

                 txtBairro.Text = "";
                 txtCid.Text = "";
                 txtComp.Text = "";
                 txtDesc.Text = "";
                 txtNum.Text = "";
                 txtRua.Text = "";
                 txtTitle.Text = "";
                 txtValorMerc.Text = "";
                 txtValorVend.Text = "";
                 ddlEstado.Text = "--";
                 ddlTp.Text = "";
                 txtArea.Text = "";
             }
             else
             {
                 lblResp.Text = "Já está cadastrado!";
                 lblResp2.Text = "";
             }
         }
         catch
         {
             lblResp.Text = "Preencha os campos!";
             lblResp2.Text = "";
         }
    }
}