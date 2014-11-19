<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="CadastroTIPOIMOVEL.aspx.cs" Inherits="cadTpIMOVEL" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <p style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700;">
        Cadastro do Tipo de Imóvel</p>
     
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
<form id="form1" runat="server">
    <p class="style3" style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="Silver" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="id_tpimo" DataSourceID="sqlTpImo" ForeColor="Black" 
        style="font-family: 'Times New Roman', Times, serif" 
         Width="221px">
        <Columns>
            <asp:BoundField DataField="tipo_imo" HeaderText="Cadastrados" 
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
    </p>
     <p class="style3">
         Novo tipo de imóvel:
        <asp:TextBox ID="txtNovo" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtNovo" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
         &nbsp;</p>
    <p class="style3">
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Cadastrar" 
            onclick="Button2_Click" Height="27px" Width="78px" />
        &nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Label ID="lblResp" runat="server" style="color: #FF0000"></asp:Label>
        <asp:Label ID="lblResp2" runat="server" style="color: #009900"></asp:Label>
        <asp:SqlDataSource ID="sqlBuscar" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
             
             SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel WHERE (tipo_imo = @novo) AND (status = '1')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtNovo" Name="novo" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlTpImo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            InsertCommand="INSERT INTO tipo_imovel(tipo_imo, status) VALUES (@tp, '1')" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
             SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel WHERE (status = '1')">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNovo" Name="tp" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
     </form>
</asp:Content>

