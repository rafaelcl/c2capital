<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="CadastroIMOVEL.aspx.cs" Inherits="cadIMOVEL" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p style="font-weight: 700; font-size: x-large; font-family: 'Times New Roman', Times, serif;">
        Cadastro do Imóvel</p>
    
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="form1" runat="server">
    <span class="style3">Título do imóvel:&nbsp;</span><asp:TextBox ID="txtTitle" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtTitle" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    <span class="style3">
    <br />
    <br />
    Tipo de imóvel: </span>
    <asp:DropDownList ID="ddlTp" runat="server" DataSourceID="sqlTp" 
        DataTextField="tipo_imo" DataValueField="id_tpimo">
</asp:DropDownList>
    <asp:SqlDataSource ID="sqlTp" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
        SelectCommand="SELECT id_tpimo, tipo_imo, status FROM tipo_imovel WHERE (status = '1')"></asp:SqlDataSource>
    <span class="style3">
    
    
    <p style="color: #000000">
        Endereço:
        <asp:TextBox ID="txtRua" runat="server" Width="231px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtRua" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp; Número:
        <asp:TextBox ID="txtNum" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtNum" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    </p><p style="color: #000000">
        Bairro:
        <asp:TextBox ID="txtBairro" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtBairro" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        Complemento:
        <asp:TextBox ID="txtComp" runat="server" Width="200px"></asp:TextBox>
    </p>
    
<p style="color: #000000">
    Cidade: 
    <asp:TextBox ID="txtCid" runat="server" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtCid" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
    Estado:&nbsp;<asp:DropDownList ID="ddlEstado" runat="server">
    <asp:ListItem>--</asp:ListItem>
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
    </p>
    Valor de mercado:&nbsp;R$ </span>
    <asp:TextBox ID="txtValorMerc" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtValorMerc" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    <span class="style3">
    <br />
    <br />
    Valor estimado para rebate:&nbsp;R$ </span>
    <asp:TextBox ID="txtValorVend" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="txtValorVend" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    <span class="style3">
    <br />
    <br />
    Área do Terreno:
    <asp:TextBox ID="txtArea" runat="server" Width="39px"></asp:TextBox>
    m²
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtArea" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Imagem 1:</span>
    <asp:FileUpload ID="fuImg1" runat="server" />
    <br class="style3" />
    <span class="style3">Imagem 2: </span>
    <asp:FileUpload ID="fuImg2" runat="server" />
    <br class="style3" />
    <span class="style3">Imagem 3: </span>
    <asp:FileUpload ID="fuImg3" runat="server" />
    <span class="style3">
    <br />
    <br />
    Descrição:</span>
    <asp:TextBox ID="txtDesc" runat="server" Height="100px" Width="400px" 
        TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Cadastrar" 
        onclick="Button1_Click" Height="27px" Width="78px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblResp" runat="server" style="color: #FF0000"></asp:Label>
    <asp:Label ID="lblResp2" runat="server" style="color: #009933"></asp:Label>
    <asp:SqlDataSource ID="sqlBuscar" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
        
        SelectCommand="SELECT id_imo, nome_imo, estado_imo, cidade_imo, bairro_imo, endereco_imo, num_imo, complemento_imo, id_tpimo, valormerc_imo, valorvenda_imo, descricao_imo, img1_imo, img2_imo, img3_imo, area_imo FROM imovel WHERE (nome_imo = @pesq)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTitle" Name="pesq" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlImo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        InsertCommand="INSERT INTO imovel(nome_imo, estado_imo, cidade_imo, bairro_imo, endereco_imo, num_imo, complemento_imo, id_tpimo, valormerc_imo, valorvenda_imo, img1_imo, img2_imo, img3_imo, descricao_imo, area_imo) VALUES (@title, @estado, @cidade, @bairro, @end, @num, @comp, @tp, @valormerc, @valorvend, @img1, @img2, @img3, @desc , @area)" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM imovel">
        <InsertParameters>
            <asp:ControlParameter ControlID="txtTitle" Name="title" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddlEstado" Name="estado" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtCid" Name="cidade" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtBairro" Name="bairro" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtRua" Name="end" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtNum" Name="num" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtComp" Name="comp" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddlTp" Name="tp" PropertyName="SelectedValue" />
            <asp:Parameter Name="valormerc" />
            <asp:Parameter Name="valorvend" />
            <asp:Parameter Name="img1" />
            <asp:Parameter Name="img2" />
            <asp:Parameter Name="img3" />
            <asp:ControlParameter ControlID="txtDesc" Name="desc" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtArea" Name="area" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>




