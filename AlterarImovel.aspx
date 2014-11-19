<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="AlterarImovel.aspx.cs" Inherits="alterar" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

    <p style="font-size: x-large; font-family: 'Times New Roman', Times, serif; font-weight: 700;">
        Alterar Imóvel</p>

</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">

<p style="color: #000000">
    Título do imóvel: 
    <asp:TextBox ID="txtTitulo" runat="server" Width="300px"></asp:TextBox>
    </p>
<p style="color: #000000">
    Tipo de imóvel:
        <asp:TextBox ID="txtTpImo" runat="server" Width="150px"></asp:TextBox>
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sqlTpImo" 
        DataTextField="tipo_imo" DataValueField="id_tpimo">
    </asp:DropDownList>
    </p>
    <p style="color: #000000">
        <asp:SqlDataSource ID="sqlTpImo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel WHERE (status = '1')">
        </asp:SqlDataSource>
    </p>

    
    <p style="color: #000000">
        Endereço:
        <asp:TextBox ID="txtRua" runat="server" Width="200px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;
        Número:
        <asp:TextBox ID="txtNum" runat="server" Width="50px"></asp:TextBox>
    </p>
    <p style="color: #000000">
        Bairro:
        <asp:TextBox ID="txtBairro" runat="server" Width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        Complemento:
        <asp:TextBox ID="txtComp" runat="server" Width="150px"></asp:TextBox>
    </p>
<p style="color: #000000">
    Cidade:
    <asp:TextBox ID="txtCid" runat="server" Width="150px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;
    Estado:
    <asp:TextBox ID="txtEst" runat="server" Width="50px"></asp:TextBox>
    &nbsp;<span class="style3"><asp:DropDownList ID="ddlEstado" runat="server">
        <asp:ListItem>AC</asp:ListItem>
        <asp:ListItem>AL</asp:ListItem>
        <asp:ListItem>AP</asp:ListItem>
        <asp:ListItem>AM</asp:ListItem>
        <asp:ListItem>BA</asp:ListItem>
        <asp:ListItem>CE</asp:ListItem>
        <asp:ListItem>DF</asp:ListItem>
        <asp:ListItem>ES</asp:ListItem>
        <asp:ListItem>GO</asp:ListItem>
        <asp:ListItem>MA</asp:ListItem>
        <asp:ListItem>MT</asp:ListItem>
        <asp:ListItem>MS</asp:ListItem>
        <asp:ListItem>MG</asp:ListItem>
        <asp:ListItem>PA</asp:ListItem>
        <asp:ListItem>PB</asp:ListItem>
        <asp:ListItem>PR</asp:ListItem>
        <asp:ListItem>PE</asp:ListItem>
        <asp:ListItem>PI</asp:ListItem>
        <asp:ListItem>RJ</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>RS</asp:ListItem>
        <asp:ListItem>RO</asp:ListItem>
        <asp:ListItem>RR</asp:ListItem>
        <asp:ListItem>SC</asp:ListItem>
        <asp:ListItem>SP</asp:ListItem>
        <asp:ListItem>SE</asp:ListItem>
        <asp:ListItem>TO</asp:ListItem>
    </asp:DropDownList>
    </span>
    </p>
    <p style="color: #000000">
        Valor de mercado: R$<asp:TextBox ID="txtValorMerc" runat="server" Width="100px"></asp:TextBox>
    </p>
    <p style="color: #000000">
        Valor estimado 
        para rebate: R$<asp:TextBox ID="txtValorEst" runat="server" Width="100px" ></asp:TextBox>
    </p>
    <p style="color: #000000">
        Área do Terreno:  
        <asp:TextBox ID="txtArea" runat="server" Width="82px"></asp:TextBox>
        m²</p>
    <p style="color: #000000">
        Descrição:
        <asp:TextBox ID="txtDesc" runat="server" Height="80px" TextMode="MultiLine" 
            Width="200px"></asp:TextBox>
    </p>
    <p style="color: #000000">
        Imagem:
        <asp:Image ID="Image1" runat="server" Height="67px" Width="83px" />
&nbsp;<asp:FileUpload ID="fuImg1" runat="server" />
    </p>
    <p style="color: #000000">
        Imagem:
        <asp:Image ID="Image2" runat="server" Height="62px" Width="82px" />
&nbsp;<asp:FileUpload ID="fuImg2" runat="server" />
    </p>
    <p style="color: #000000">
        Imagem:
        &nbsp;<asp:Image ID="Image3" runat="server" Height="68px" Width="86px" />
        <asp:FileUpload ID="fuImg3" runat="server" />
    </p>
    <p style="color: #000000">
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAlterar" runat="server" Height="27px" Text="Alterar" 
            Width="78px" onclick="btnAlterar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFalse" runat="server" onclick="btnFalse_Click" 
            Text="Desbloquear" Height="27px" Width="100px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVoltar" runat="server" onclick="btnVoltar_Click" 
            Text="Voltar" Height="27px" Width="78px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblResp" runat="server" 
            style="color: #FF0000; "></asp:Label>
    <asp:Label ID="lblResp2" runat="server" style="color: #009900"></asp:Label>
    </p>
    <p style="color: #000000">
        <asp:SqlDataSource ID="sqlImo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [imovel]" 
            
            UpdateCommand="UPDATE imovel SET nome_imo = @titulo, estado_imo = @estado, cidade_imo = @cidade, bairro_imo = @bairro, endereco_imo = @rua, num_imo = @num, complemento_imo = @comp, id_tpimo = @tipo, valormerc_imo = @valorMerc, valorvenda_imo = @valorEst, descricao_imo = @desc , img1_imo = @img1, img2_imo = @img2, img3_imo = @img3, area_imo = @area WHERE (id_imo = @cod)">
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtTitulo" Name="titulo" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="tipo" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="ddlEstado" Name="estado" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtCid" Name="cidade" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtBairro" Name="bairro" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRua" Name="rua" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="num" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtComp" Name="comp" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDesc" Name="desc" PropertyName="Text" />
                <asp:Parameter Name="valorMerc" />
                <asp:Parameter Name="valorEst" />
                <asp:Parameter Name="img1" />
                <asp:Parameter Name="img2" />
                <asp:Parameter Name="img3" />
                <asp:SessionParameter Name="cod" SessionField="codImo" />
                <asp:ControlParameter ControlID="txtArea" Name="area" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlNImo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
            SelectCommand="SELECT imovel.id_imo, imovel.nome_imo, imovel.estado_imo, imovel.cidade_imo, imovel.bairro_imo, imovel.endereco_imo, imovel.num_imo, imovel.complemento_imo, imovel.valormerc_imo, imovel.valorvenda_imo, imovel.descricao_imo, imovel.img1_imo, imovel.img2_imo, imovel.img3_imo, tipo_imovel.tipo_imo, imovel.area_imo FROM imovel INNER JOIN tipo_imovel ON imovel.id_tpimo = tipo_imovel.id_tpimo WHERE (imovel.id_imo = @cod)">
            <SelectParameters>
                <asp:SessionParameter Name="cod" SessionField="codImo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</asp:Content>



