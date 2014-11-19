<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM.master" AutoEventWireup="true" CodeFile="HOMEADM.aspx.cs" Inherits="homeAdm" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p style="font-size: x-large">
        <strong><span style="font-family: 'Times New Roman', Times, serif">Seja Bem-Vindo Administrador
        </span>
        <asp:Label ID="lblNome" runat="server" 
            style="font-family: 'Times New Roman', Times, serif"></asp:Label>
        <span style="font-family: 'Times New Roman', Times, serif">!</span></strong></p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/c2capital_fundo.png" />
    </p>
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    
</asp:Content>


