<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="REGISTROADM.aspx.cs" Inherits="regImo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-size: x-large; font-family: 'Times New Roman', Times, serif">
        <strong>Registros dos Administradores</strong></p>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_adm" DataSourceID="sqlADM" BackColor="White" 
        BorderColor="Silver" BorderWidth="1px" CellPadding="3" 
        style="font-family: 'Times New Roman', Times, serif" ForeColor="Black" 
        Width="831px" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="id_adm" HeaderText="Código" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_adm" />
            <asp:BoundField DataField="nome_adm" HeaderText="Nome" 
                SortExpression="nome_adm" />
            <asp:BoundField DataField="login_adm" HeaderText="Login" 
                SortExpression="login_adm" />
            <asp:BoundField DataField="email_adm" HeaderText="E-mail" 
                SortExpression="email_adm" />
        </Columns>
        <EditRowStyle ForeColor="Black" />
        <EmptyDataRowStyle ForeColor="Black" />
        <FooterStyle BackColor="White" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" 
            VerticalAlign="Middle" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle ForeColor="Black" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#FF0066" />
        <SortedDescendingCellStyle BackColor="#009900" />
        <SortedDescendingHeaderStyle BackColor="#FF99CC" />
    </asp:GridView>
    <asp:SqlDataSource ID="sqlADM" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
        SelectCommand="SELECT id_adm, nome_adm, login_adm, senha_adm, email_adm, status FROM administrador WHERE (status = '1')">
    </asp:SqlDataSource>
</p>
        </form>
</asp:Content>



