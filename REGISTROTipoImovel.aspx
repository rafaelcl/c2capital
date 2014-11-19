<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="REGISTROTipoImovel.aspx.cs" Inherits="regTpImo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-size: x-large; font-family: 'Times New Roman', Times, serif">
        <strong>Registros dos Tipos de Imóveis</strong></p>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="Silver" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="id_tpimo" DataSourceID="sqlTp" ForeColor="Black" 
        style="font-family: 'Times New Roman', Times, serif; text-align: center;" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="832px" 
        AllowPaging="True">
        <Columns>
            <asp:CommandField HeaderText="Alterar" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="Excluir">
                <ItemTemplate>
                    <asp:CheckBox ID="chkOP" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="id_tpimo" HeaderText="Código" InsertVisible="False" 
                ReadOnly="True" SortExpression="id_tpimo" />
            <asp:BoundField DataField="tipo_imo" HeaderText="Tipo de Imóvel" 
                SortExpression="tipo_imo" />
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
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnExcluir" runat="server" onclick="btnExcluir_Click" 
            Text="Excluir" Height="27px" Width="78px"/>
        <asp:SqlDataSource ID="sqlTp" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
            SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel WHERE (status = '1')">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlUpdate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM tipo_imovel" 
            UpdateCommand="UPDATE tipo_imovel SET status = '0' WHERE (id_tpimo = @cod)">
            <UpdateParameters>
                <asp:SessionParameter Name="cod" SessionField="codTpImo" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</asp:Content>



