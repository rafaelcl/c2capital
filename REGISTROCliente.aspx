<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="REGISTROCliente.aspx.cs" Inherits="regImo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large">
        <strong>Registros dos Clientes</strong></p>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_cli" DataSourceID="sqlCli" BackColor="White" 
        BorderColor="Silver" BorderWidth="1px" CellPadding="3" 
        style="font-family: 'Times New Roman', Times, serif; text-align: center;" ForeColor="Black" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="832px" 
        AllowPaging="True">
        <Columns>
            <asp:CommandField HeaderText="Alterar" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Excluir">
                <ItemTemplate>
                    <asp:CheckBox ID="chkOP" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="id_cli" HeaderText="Cód." InsertVisible="False" 
                ReadOnly="True" SortExpression="id_cli" />
            <asp:BoundField DataField="nome_cli" HeaderText="Nome" 
                SortExpression="nome_cli" />
            <asp:BoundField DataField="sexo_cli" HeaderText="Sexo" 
                SortExpression="sexo_cli" />
            <asp:BoundField DataField="cpf_cli" HeaderText="CPF" 
                SortExpression="cpf_cli" />
                <asp:BoundField DataField="cel_cli" HeaderText="Celular" 
                SortExpression="cel_cli" />
                <asp:BoundField DataField="tel_cli" HeaderText="Telefone" 
                SortExpression="tel_cli" /> 
                <asp:BoundField DataField="rua_cli" HeaderText="Endereço" 
                SortExpression="rua_cli" />     
                <asp:BoundField DataField="bai_cli" HeaderText="Bairro" 
                SortExpression="bai_cli" />           
                <asp:BoundField DataField="cid_cli" HeaderText="Cidade" 
                SortExpression="cid_cli" />
                <asp:BoundField DataField="est_cli" HeaderText="UF" 
                SortExpression="est_cli" />
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
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnExcluir" runat="server"  
        onclick="btnExcluir_Click" Text="Excluir" Height="27px" Width="78px" />

    <asp:SqlDataSource ID="sqlCli" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT id_cli, nome_cli, cpf_cli, cel_cli, tel_cli, sexo_cli, cep_cli, rua_cli, num_cli, bai_cli, comp_cli, cid_cli, est_cli FROM cliente" 
        DeleteCommand="DELETE FROM cliente WHERE (id_cli = @cod)">
        <DeleteParameters>
            <asp:Parameter Name="cod" />
        </DeleteParameters>
    </asp:SqlDataSource>
   
        </form>
</asp:Content>



