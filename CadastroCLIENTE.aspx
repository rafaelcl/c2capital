<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="CadastroCLIENTE.aspx.cs" Inherits="cadCli"%>

 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700;">
        Cadastro do Cliente</p>
    
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder">
    <form id="Form1" method="post" runat="server">
    <script type="text/javascript" src="/Script/Mascaras.js"> </script>
    <div id ="CadCli">

    <p class="style2">
        Nome:
        <asp:TextBox ID="txtNome" Width="300px" runat="server"> </asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtNome" >*</asp:RequiredFieldValidator>
    </p>
    
    <p class="style2">
        Sexo:
        <asp:DropDownList ID="ddlSexo" runat="server">
            <asp:ListItem>--</asp:ListItem>
            <asp:ListItem Value="F" Text=Feminino></asp:ListItem>
            <asp:ListItem Value="M" Text=Masculino></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="style2">
        CPF:
        <asp:TextBox ID="txtCPF" runat="server" ClientIDMode="Static" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtCPF">*</asp:RequiredFieldValidator>
    </p>
    <p class="style2">
        Celular:
        <asp:TextBox ID="txtCel" runat="server" Width="150px" ClientIDMode="Static"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtCel">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        Telefone:
        <asp:TextBox ID="txtTel" runat="server" Width="150px" ClientIDMode="Static"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtTel">*</asp:RequiredFieldValidator>
    </p>
    <p class="style2">
        CEP:
        <asp:TextBox ID="txtCEP" runat="server" ClientIDMode="Static" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtCEP">*</asp:RequiredFieldValidator>
    </p>
    <p class="style2">
        Rua:
        <asp:TextBox ID="txtRua" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtRua">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
        Número:
        <asp:TextBox ID="txtNum" runat="server" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtNum">*</asp:RequiredFieldValidator>
    </p>
    <p class="style2">
        Bairro:
        <asp:TextBox ID="txtBai" runat="server" Width="200px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtBai">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        Complemento:
        <asp:TextBox ID="txtComp" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtComp">*</asp:RequiredFieldValidator>
    </p>
    
        Cidade:
        <asp:TextBox ID="txtCid" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Preencha o campo em branco" ControlToValidate="txtCid">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        Estado:
        <asp:DropDownList ID="ddlUF" runat="server">
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
        &nbsp;&nbsp;<p class="style2">
        &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
            onclick="btnCadastrar_Click" Height="27px" Width="78px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="color: #009900"></asp:Label>
        
        <asp:SqlDataSource ID="sqlCadCli" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM cliente" 
            
            
            
            InsertCommand="INSERT INTO cliente(nome_cli, sexo_cli, cpf_cli, cel_cli, tel_cli, cep_cli, num_cli, rua_cli, bai_cli, comp_cli, cid_cli, est_cli) VALUES (@nome, @sexo, @cpf, @celular, @telefone, @cep, @numero, @rua, @bairro, @complemento, @cidade, @estado)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="nome" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCPF" Name="cpf" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlSexo" Name="sexo" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtCel" Name="celular" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTel" Name="telefone" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRua" Name="rua" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtBai" Name="bairro" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtComp" Name="complemento" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="numero" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCid" Name="cidade" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlUF" Name="estado" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtCEP" Name="cep" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlBuscar" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT id_cli, nome_cli, sexo_cli, cpf_cli, cel_cli, tel_cli, cep_cli, rua_cli, num_cli, bai_cli, comp_cli, cid_cli, est_cli FROM cliente WHERE (cpf_cli = @cpf)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCPF" Name="cpf" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </div>
    </form>
</asp:Content>




