<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME2.master" AutoEventWireup="true" CodeFile="CONTATO.aspx.cs" Inherits="noticias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="estilo/estilonoticias.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            text-decoration: underline;
            text-align: center;
        }
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            text-align: left;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            text-align: center;
        }
        .style5
        {
            text-decoration: underline;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="/Script/Mascaras.js"> </script>
    <div class="container demo-3">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/CreativeButtons/"></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=15469"></a>
			</div>
        <div id="titlenot">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/img/tituloContato.fw.png" onclick="ImageButton1_Click" Width="900px"  />
        </div>
        <div id="conteudo3">
        <div id = "faleconosco"       
                
                
                
                
                style=" float: left; width: 905px; height: 699px; margin-left: 20px; margin-right: 3px;">
                <span class="style5"><strong>Fale Conosco C2Capital</strong></span></span><p class="style3">                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Está interessado em alguns dos nossos imóveis? Então entre em contato para 
                    agendar a sua visita por telefone ou mande uma mensagem abaixo.
                </p>
                <p class="style3">                   
                    Nome:
                    <asp:TextBox ID="txtNome" runat="server" Width="326px"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNome" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                    
                </p>
                <p class="style3">                   
                    E-mail:
                    <asp:TextBox ID="txtEmail" runat="server" Width="329px"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                    
                </p>
                <p class="style3">                   
                    Celular:
                    <asp:TextBox ID="txtCel" runat="server" Width="152px" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCel" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;                   
                    </p>
                <p class="style3">                   
                    Telefone:
                    <asp:TextBox ID="txtTel" runat="server" Width="145px" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtTel" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                </p>
                <p class="style3">                   
                    Cidade: 
                    <asp:TextBox ID="txtCidade" runat="server" Width="263px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCidade" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; Estado: <asp:DropDownList ID="ddlEstado" runat="server">
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
    </asp:DropDownList></p>
                <p class="style3">                   
                    Data:
                    <asp:TextBox ID="txtData" runat="server" Width="93px" ClientIDMode="Static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtData" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp; (Segunda à Sexta: 9:00h - 18:00h)</p>
                <p class="style3">                   
                    Assunto: 
                    <asp:TextBox ID="txtAssunto" runat="server" Width="315px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtAssunto" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                </p>
                <p class="style3">                   
                    Fiquei interessado no Imóvel
                    <asp:DropDownList ID="ddlImovel" runat="server" DataSourceID="sqlImovel" 
                        DataTextField="id_imo" DataValueField="id_imo" 
                        onselectedindexchanged="ddlImovel_SelectedIndexChanged">
                    </asp:DropDownList>
                </p>
                <p class="style3">                   
                   Mensagem:
                    <asp:TextBox ID="txtMensagem" runat="server" Height="157px" Width="365px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtMensagem" ErrorMessage="Preencha o campo em branco">*</asp:RequiredFieldValidator>
                    </p>
                <p class="style4">                   
                    &nbsp;&nbsp;<asp:Button ID="btnEnviar" runat="server" Text="Enviar" 
                        onclick="btnEnviar_Click" />
                </p>
                <p class="style4">                   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl1" runat="server" style="color: #33CC33"></asp:Label>
                    <asp:Label ID="lbl2" runat="server" style="color: #FF0000"></asp:Label>
                    </p>
                                       <div id="linha5">
                </div> </p>
                       <br />
    <br />
    <br /
                <p class="style4">                   
                    &nbsp;</p>
                    &nbsp;</div><div id = "luiz" 
                
                
                
                
                
                
                style=" float: right; width: 290px; height: 159px; margin-left: 4px; margin-top: 1px;  z-index: 1; left: 612px; top: 293px; background-color: #EAFFEA; position: absolute;">
            <p style="margin-left: 2px;  text-align: center; background-color: #CCFFCC; height: 25px; margin-top: 0px;">
                <span class="style2">Luiz Filipe Corain  </span>
                <br />
            </p>
            <p class="style3">
&nbsp;&nbsp;&nbsp; Celular: (12) 9881-0282 
            </p>
            <p class="style3">
&nbsp;&nbsp;&nbsp; Celular: (11) 8933-2628</p>
            <p class="style3">
&nbsp;&nbsp;&nbsp; Email: corain@c2capital.com.br</p>

        </div>
            <div id = "rafael" 
                
                
                
                
                
                
                
                
                style=" float: right; width: 290px; height: 121px; margin-left: 0px; margin-top: 1px;  z-index: 1; left: 616px; top: 503px; position: absolute; background-color: #EAFFEA;">
                <p style="margin-left: 2px;  text-align: center; height: 25px; background-color: #CCFFCC; margin-top: 0px;">
                &nbsp;&nbsp;&nbsp;
                <span class="style2">Rafael Cabreira</span>
                <br />
                </p>
                <p class="style3">
                    &nbsp;&nbsp;&nbsp; Celular: (12) 98105-0254</p>
                <p class="style3">
                    &nbsp;&nbsp;&nbsp; Email: cabreira@c2capital.com.br</p>
            </div>
            <div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3666.6271719360934!2d-45.916396999999996!3d-23.220253999999965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cc357a10fb2897%3A0x296ffda797c39c74!2sC2+Capital+Ltda!5e0!3m2!1spt-BR!2sbr!4v1410731913604" frameborder="0" 
                    
                    style="border-style: none; border-color: inherit; border-width: 0; height: 500px; width: 600px; margin-top: 50px; float: right; margin-left: 0px; background-color: #FFFFFF;" 
                    id="I1" >
                </iframe>
                <asp:SqlDataSource ID="sqlImovel" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
                    SelectCommand="SELECT id_imo, nome_imo, estado_imo, cidade_imo, bairro_imo, area_imo, endereco_imo, num_imo, complemento_imo, id_tpimo, valormerc_imo, valorvenda_imo, descricao_imo, img1_imo, img2_imo, img3_imo FROM imovel"></asp:SqlDataSource>
            </div>
            
</div>
            <div id = "c2capital"            
                                
                
                
                
                
                
                style=" float: left; width: 244px; height: 282px; margin-left: 20px; margin-top: 0px; background-color: #EAFFEA; z-index: 1; left: 36px; top: 1002px; position: absolute;">
                <p style="margin-left: 1px; background-color: #CCFFCC; text-align: center; height: 25px; margin-top: 0px;">
                <span class="style2">Empresa C2Capital</span>
                <br />
                </p>
                <p class="style3">                   
                    &nbsp;&nbsp;                   
                    Avenida Campos Elíseos, 67
                </p>
                <p class="style3">                   
                    &nbsp;&nbsp;                   
                    Jardim Alvorada
                </p>
                <p class="style3">                   
                    &nbsp;&nbsp;                   
                    São José dos Campos - SP</p>
                <p class="style3">                   
&nbsp;&nbsp;                   
Cep. 12240-530
                </p>
                <p class="style3">                   
                    &nbsp;&nbsp;                   
                    Brasil
                </p>
                <p class="style3">                   
                    &nbsp;&nbsp;                   
                    Telefone: (0xx) 12 3209-6787 </p>
                    
            </div>
        </div>
            </span>
    </strong>
</asp:Content>

