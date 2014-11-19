<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="ConfiguracaoConta.aspx.cs" Inherits="confConta" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-weight: 700; font-size: x-large; font-family: 'Times New Roman', Times, serif;">
    Configuração da Conta</p>

    </asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
    <p>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        &nbsp;<asp:TextBox ID="txtAnt" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSA" runat="server" onclick="btnSA_Click" Text="Confirmar" />
    </p>
<p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        &nbsp;<asp:TextBox ID="txtSenha1" runat="server" 
            TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label2" runat="server"></asp:Label>
        &nbsp;<asp:TextBox ID="txtSenha2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAlt3" runat="server" Text="Alterar" 
            onclick="btnAlt3_Click" />
    </p>
    <p>
        <asp:Label ID="lblResp" runat="server" style="color: #FF0000"></asp:Label>
        <asp:Label ID="lblResp2" runat="server" style="color: #009900"></asp:Label>
        <asp:SqlDataSource ID="sqlBuscar" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
            SelectCommand="SELECT id_adm, nome_adm, login_adm, senha_adm FROM administrador WHERE (id_adm = @cod) AND (senha_adm = @senha)">
            <SelectParameters>
                <asp:SessionParameter Name="cod" SessionField="codAdm" />
                <asp:ControlParameter ControlID="txtAnt" Name="senha" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="btnAltSenha" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM administrador" 
            UpdateCommand="UPDATE administrador SET senha_adm = @senha WHERE (id_adm = @cod)">
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtSenha1" Name="senha" PropertyName="Text" />
                <asp:SessionParameter Name="cod" SessionField="codAdm" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlUpdate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM administrador" 
            UpdateCommand="UPDATE administrador SET status = '0' WHERE (id_adm = @cod)">
            <UpdateParameters>
                <asp:SessionParameter Name="cod" SessionField="codAdm" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Excluir conta" />
    </p>
    </form>
</asp:Content>



