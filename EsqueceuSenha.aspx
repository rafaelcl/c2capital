<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME.master" AutoEventWireup="true" CodeFile="EsqueceuSenha.aspx.cs" Inherits="EsqueceuSenha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="estilo/estilonoticias.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="titlenot">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/img/tituloesqueceusenha.fw.png" onclick="ImageButton1_Click" 
                Width="900px" style="text-align: center"  />
            <br />
        </div>
        <div id="conteudo3">
        Login:
        <asp:TextBox ID="txtLogin" runat="server" Width="172px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtLogin">*</asp:RequiredFieldValidator>
    <p>
        E-mail: 
        <asp:TextBox ID="txtEmail" runat="server" Width="172px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" 
        onclick="btnEnviar_Click" Width="78px" Height="27px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl1" runat="server" style="color: #33CC33" CssClass="style2"></asp:Label>
        <asp:Label ID="lbl2" runat="server" style="color: #FF0000" CssClass="style2"></asp:Label>
    <p>
   
        <asp:SqlDataSource ID="sqlSenha" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT id_adm, nome_adm, login_adm, senha_adm, email_adm, status FROM administrador WHERE (login_adm = @LOGIN) AND (email_adm = @EMAIL)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtLogin" Name="LOGIN" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="EMAIL" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
     </div>
</asp:Content>

