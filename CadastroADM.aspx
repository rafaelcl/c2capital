<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="CadastroADM.aspx.cs" Inherits="cadADM" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700;">
        Cadastro Administrador</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder">
    <span class="style1">    
<link rel="stylesheet" href="password_strength.css" />
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="jquery.hippo-password-strength.js"></script>
<script>

    $(function () {
        $('.password').hippoPasswordStrength({
            indicator_prefix: "pass_state0" // default "password_strength"
        });
    });
</script>
    </span>
    <form id="form1" runat="server">
    </span>

    <p style="text-align: left">
        <span class="style1">Nome: </span>
        <asp:TextBox ID="txtNome" runat="server" Width="200px" CssClass="style3" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtNome" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    </p>
    <p style="text-align: left">
        <span class="style1">Login: </span>
        <asp:TextBox ID="txtLogin" runat="server" Width="150px" CssClass="style3" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    </p>
    <p style="text-align: left">
        <span class="style1">E-mail: </span>
        <asp:TextBox ID="txtEmail" runat="server" Width="200px" CssClass="style3" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtLogin" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
    </p>
    <p style="text-align: left">
        <span class="style1">Senha:&nbsp;</span><input class="password" type="password" 
            size="30" name="params[password]" value="" data-indicator="strengthLevel" 
            style="width: 150px"></p>
    <p style="text-align: left">
        Nível da Senha:</p>
    <div id="strengthLevel" class="password_strength pass_state01"></div>
    <p style="text-align: left">
        <span class="style1">Repita a senha:&nbsp;</span><asp:TextBox ID="txtRepetir" runat="server" Width="150px" TextMode="Password" 
            CssClass="style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtRepetir" ErrorMessage="Preencha o campo em branco" 
            SetFocusOnError="True">*</asp:RequiredFieldValidator>
    </p>
    <p style="text-align: left">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/CImage.aspx"/>
        <asp:TextBox ID="txtimgcode" runat="server" CssClass="style3" 
            style="margin-bottom: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ClientIDMode="AutoID" ControlToValidate="txtimgcode" 
            ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
	ForeColor="Red" Text="" style="color: #000000"></asp:Label>
    <br />
    </p>
   
    <p style="text-align: left">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" 
            onclick="btnCadastrar_Click" Height="27px" Width="78px" 
            CssClass="style3" />
 &nbsp;&nbsp;
 &nbsp; <asp:Label ID="Label1" runat="server" style="color: #FF0000; text-align: left;" 
            CssClass="style2"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="color: #33CC33" CssClass="style2"></asp:Label>
        &nbsp;<p style="text-align: left">

        <asp:SqlDataSource ID="sqlBuscar" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            
            
            SelectCommand="SELECT id_adm, nome_adm, login_adm, senha_adm, email_adm, status FROM administrador WHERE (login_adm = @login)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtLogin" Name="login" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlCadAdm" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            InsertCommand="INSERT INTO administrador(nome_adm, login_adm, senha_adm, status, email_adm) VALUES (@nome, @login, @senha, '1', @email)" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [administrador]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="nome" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtLogin" Name="login" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRepetir" Name="senha" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>

    </form>
</asp:Content>



