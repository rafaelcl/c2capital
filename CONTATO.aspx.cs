using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Text;
using System.Net.Mail;

public partial class noticias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CONTATO.aspx");
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();
        string nome,cod, email, celular,telefone,cidade,estado,assunto, mensagem,data;
        nome = txtNome.Text;
        email = txtEmail.Text;
        celular = txtCel.Text;
        telefone = txtTel.Text;
        cidade = txtCidade.Text;
        assunto = txtAssunto.Text;
        mensagem = txtMensagem.Text;
        estado = ddlEstado.Text;
        data = txtData.Text;
        cod = ddlImovel.Text;
        
        try
        {
            lbl1.Text = "";
            lbl2.Text = "";

            m.From = new MailAddress("majuveneziani@gmail.com", "Fale Conosco");

            m.To.Add(new MailAddress("leticiadecamposlima@gmail.com", "Olá..."));


            m.Subject = "FALE CONOSCO C2CAPITAL";
            m.IsBodyHtml = true;

            m.Body =

            m.Body += " " + "<br/>";
            m.Body += "<b>" + "FALE CONOSCO" + "<b/>" + "<br/>";
            m.Body += " " + "<br/>";
            m.Body += " " + "<br/>";
            m.Body += " " + "<br/>";
            m.Body += " -------------------------------" + "<br/>";
            m.Body += "<b>" + "  Nome: " + nome + "<b/><br/>";
            m.Body += "<b>" + "  Email: " + email + "<b/><br/>";
            m.Body += "<b>" + "  Ficou interessado no imóvel " + cod + "<b/><br/>";
            m.Body += "<b>" + "  Celular: " + celular + "<b/><br/>";
            m.Body += "<b>" + "  Telefone: " + telefone + "<b/><br/>";
            m.Body += "<b>" + "  Cidade: " + cidade + "<b/><br/>";
            m.Body += "<b>" + "  Estado: " + estado + "<b/><br/>";
            m.Body += "<b>" + "  Visita: " + data + "<b/><br/>";
            m.Body += "<b>" + "  Assunto: " + assunto + "<b/><br/>";
            m.Body += "<b>" + "  Mensagem: " + mensagem + "<b/><br/>";
            m.Body += " -------------------------------" + "<br/>";
            m.Body += " " + "<br/>";
            m.Body += "" + "<br/>";
            m.Body += " " + "<br/>";

            m.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
            m.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.Credentials = new
            System.Net.NetworkCredential("majuveneziani@gmail.com", "veneziani17");
            sc.EnableSsl = true;
            sc.Send(m);

            txtNome.Text = "";
            txtTel.Text = "";
            txtCidade.Text = "";
            txtCel.Text = "";
            txtAssunto.Text = "";
            txtMensagem.Text = "";
            txtEmail.Text = "";
            ddlEstado.Text = "--";
            txtData.Text = "";
            ddlImovel.Text = "";

            lbl1.Text = "Email enviado com sucesso!";
            lbl2.Text = "";
        }

        catch (Exception ex)
        {
            lbl2.Text = "Email não enviado!";
        }

    }
    protected void ddlImovel_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}