<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="REGISTROImovel.aspx.cs" Inherits="regImo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large">
        <strong>Registros dos Imóveis</strong></p>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_imo" DataSourceID="sqlImo" BackColor="White" 
        BorderColor="Silver" BorderWidth="1px" CellPadding="3" 
        style="font-family: 'Times New Roman', Times, serif; text-align: center;" ForeColor="Black" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
        Width="832px">
        <Columns>
            <asp:CommandField HeaderText="Alterar" ShowSelectButton="True" />

            <asp:TemplateField HeaderText="Excluir">
                <ItemTemplate>
                    <asp:CheckBox ID="chkOP" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="id_imo" HeaderText="Cód." InsertVisible="False" 
                ReadOnly="True" SortExpression="id_imo" />
            

            <asp:BoundField DataField="nome_imo" HeaderText="Título" 
                SortExpression="nome_imo" />
            <asp:BoundField DataField="tipo_imo" HeaderText="Tipo de Imo." 
                SortExpression="tipo_imo" />          
            
            <asp:BoundField DataField="cidade_imo" HeaderText="Cidade" 
                SortExpression="cidade_imo" />
                <asp:BoundField DataField="estado_imo" HeaderText="UF" 
                SortExpression="estado_imo" />
                
            <asp:TemplateField HeaderText="Valor Mercado" SortExpression="valormerc_imo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("valormerc_imo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        Text='<%# Bind("valormerc_imo", "{0:C}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Valor Venda" SortExpression="valorvenda_imo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("valorvenda_imo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" 
                        Text='<%# Bind("valorvenda_imo", "{0:C}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

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
    
</p>
    <p>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="btnExcluir" runat="server" onclick="btnExcluir_Click" 
            Text="Excluir" Height="27px" Width="78px" />

</p>
    <p>

    <asp:SqlDataSource ID="sqlImo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
        SelectCommand="SELECT imovel.id_imo, imovel.nome_imo, imovel.estado_imo, imovel.cidade_imo, imovel.bairro_imo, imovel.endereco_imo, imovel.num_imo, imovel.complemento_imo, imovel.valormerc_imo, imovel.valorvenda_imo, imovel.img1_imo, imovel.img2_imo, imovel.img3_imo, tipo_imovel.tipo_imo, imovel.area_imo FROM imovel INNER JOIN tipo_imovel ON imovel.id_tpimo = tipo_imovel.id_tpimo" 
        
        UpdateCommand="UPDATE tipo_imovel SET status = '0' WHERE (id_tpimo = @cod)" 
        DeleteCommand="DELETE FROM imovel WHERE (id_imo = @cod)">
        <DeleteParameters>
            <asp:SessionParameter Name="cod" SessionField="cod" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="cod" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlUpdate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
           
            SelectCommand="SELECT id_imo, nome_imo, estado_imo, cidade_imo, bairro_imo, endereco_imo, num_imo, complemento_imo, id_tpimo, valormerc_imo, valorvenda_imo, descricao_imo, img1_imo, img2_imo, img3_imo, area_imo FROM imovel WHERE (id_imo = @cod)">
            <SelectParameters>
                <asp:SessionParameter Name="cod" SessionField="codImo" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
</form>
</asp:Content>



