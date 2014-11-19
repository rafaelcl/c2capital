<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME.master" AutoEventWireup="true" CodeFile="LoginADM.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="estilo/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="login">
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp; <span class="style1">Login:</span><br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLogin" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp; <span class="style1">Senha: </span><br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="200px" ></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnConect" runat="server" Text="Conectar-se" 
            onclick="btnConect_Click" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbntEsqueceuSenha" runat="server" 
            onclick="lbntEsqueceuSenha_Click">Esqueceu sua senha?</asp:LinkButton>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblErro" runat="server" style="color: #FF0000"></asp:Label>
        <asp:SqlDataSource ID="sqlLogin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
            
            
            SelectCommand="SELECT id_adm, nome_adm, login_adm, senha_adm, email_adm, status FROM administrador WHERE (login_adm = @login) AND (senha_adm = @senha)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtLogin" Name="login" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSenha" Name="senha" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><p style="font-size: large">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/c2capital_fundo.png" 
            Width="1000px" style="text-align: center; margin-left: -350px" />
    </div>
    
</asp:Content>

