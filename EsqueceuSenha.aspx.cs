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

public partial class EsqueceuSenha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {

            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();
            string login, senha;
            login = txtLogin.Text;

            DataView dv;
            dv = (DataView)sqlSenha.Select(DataSourceSelectArguments.Empty);
            senha = dv.Table.Rows[0]["senha_adm"].ToString();

            try
            {
                lbl1.Text = "";
                lbl2.Text = "";

                m.From = new MailAddress("majuveneziani@gmail.com", "Administrador C2Capital");

                m.To.Add(new MailAddress(txtEmail.Text, "Olá..."));

                m.Subject = "RECUPERAÇÃO DE SENHA";
                m.IsBodyHtml = true;

                m.Body =

                m.Body += " " + "<br/>";
                m.Body += "<b>" + "RECUPERAÇÃO DE SENHA" + "<b/>" + "<br/>";
                m.Body += " " + "<br/>";
                m.Body += " " + "<br/>";
                m.Body += " " + "<br/>";
                m.Body += " -----------------------------" + "<br/>";
                m.Body += "<b>" + "  Conta: " + login + "<b/><br/>";
                m.Body += "<b>" + "  Senha: " + senha + "<b/><br/>";
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

                txtEmail.Text = "";
                txtLogin.Text = "";

                lbl1.Text = "Email enviado com sucesso!";
                lbl2.Text = "";
            }

            catch (Exception ex)
            {
                lbl2.Text = "Email não enviado!";
            }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EsqueceuSenha.aspx");
    }
}