<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageADM2.master" AutoEventWireup="true" CodeFile="AlterarCliente.aspx.cs" Inherits="alterarCli" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <p style="font-size: x-large; font-family: 'Times New Roman', Times, serif; font-weight: 700;">
        Alterar Cliente</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder">
    <form id="texto" method="post" runat="server">   
     
   <p>
        Nome:
        <asp:TextBox ID="txtNome" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>
        Sexo: <asp:DropDownList ID="ddlSexo" runat="server">
            <asp:ListItem>--</asp:ListItem>
            <asp:ListItem Value="F" Text=Feminino></asp:ListItem>
            <asp:ListItem Value="M" Text=Masculino></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        CPF: 
        <asp:TextBox ID="txtCPF" runat="server" Width="150px"></asp:TextBox>
    </p>

    <p>
        Celular: 
        <asp:TextBox ID="txtCel" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Telefone:
        <asp:TextBox ID="txtTel" runat="server" Width="150px"></asp:TextBox>
    </p>

    <p>
        CEP: 
        <asp:TextBox ID="txtCEP" runat="server" Width="150px"></asp:TextBox>
    </p>

    <p>
        Rua: 
        <asp:TextBox ID="txtRua" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Número:
        <asp:TextBox ID="txtNum" runat="server" Width="50px"></asp:TextBox>
    </p>

    <p>
        Bairro: 
        <asp:TextBox ID="txtBairro" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
&nbsp;Complemento:
        <asp:TextBox ID="txtComp" runat="server" Width="150px"></asp:TextBox>
    </p>

    <p>
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
    &nbsp;&nbsp;&nbsp; Cidade:
        <asp:TextBox ID="txtCidade" runat="server" Width="200px"></asp:TextBox>
    </p>

    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAlterar" runat="server" Text="Alterar" Height="27px" Width="78px"
            onclick="btnAlterar_Click" />
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnVoltar" runat="server" onclick="btnVoltar_Click" Height="27px" Width="78px"
            Text="Voltar" />
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblResp" runat="server" style="color: #009900"></asp:Label>
        &nbsp;</p>

    <p>
        <asp:SqlDataSource ID="sqlAltCli" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT id_cli, nome_cli, cpf_cli, cel_cli, tel_cli, sexo_cli, cep_cli, rua_cli, num_cli, bai_cli, comp_cli, cid_cli, est_cli FROM cliente WHERE (id_cli = @cod)" 
          
            UpdateCommand="UPDATE cliente SET nome_cli = @nome, sexo_cli = @sexo, cpf_cli = @cpf, cel_cli = @cel, tel_cli = @tel, cep_cli = @cep, rua_cli = @rua, num_cli = @num, bai_cli = @bai, comp_cli = @comp, cid_cli = @cid, est_cli = @est WHERE (id_cli = @cod)">
            <SelectParameters>
                <asp:SessionParameter Name="cod" SessionField="codCli" />
            </SelectParameters>

            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNome" Name="nome" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlSexo" Name="sexo" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtCPF" Name="cpf" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCel" Name="cel" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTel" Name="tel" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCEP" Name="cep" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtRua" Name="rua" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNum" Name="num" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtBairro" Name="bai" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtComp" Name="comp" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCidade" Name="cid" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlUF" Name="est" PropertyName="SelectedValue" />
                <asp:SessionParameter Name="cod" SessionField="codCli" />
            </UpdateParameters>

        </asp:SqlDataSource>
    </form>
</asp:Content>

