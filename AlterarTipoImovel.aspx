<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="AlterarTipoImovel.aspx.cs" Inherits="alterar" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700;">
        Alterar Tipo de Imóvel</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder">
<form id="Form1" method="post" runat="server">

<p style="color: #000000; text-align: left;">
    Tipo de imóvel: 
    <asp:TextBox ID="txtTpImo" runat="server" Width="150px" ></asp:TextBox>
    &nbsp;&nbsp;&nbsp;</p>
<p style="color: #000000; text-align: left;">
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnAlterar" runat="server" Height="27px" Text="Alterar" 
            Width="78px" onclick="btnAlterar_Click" />

    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnVoltar" runat="server" Height="27px" Width="78px" onclick="btnVoltar_Click" 
        Text="Voltar" />

        &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="lblResp" runat="server" style="color: #009900"></asp:Label>
        
    </p>
    <asp:SqlDataSource ID="sqlImo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel" 
        
        UpdateCommand="UPDATE tipo_imovel SET tipo_imo = @novo WHERE (id_tpimo = @cod)">
        <UpdateParameters>
            <asp:SessionParameter Name="cod" SessionField="codTpImo" />
            <asp:ControlParameter ControlID="txtTpImo" Name="novo" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>