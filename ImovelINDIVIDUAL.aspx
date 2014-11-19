<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME.master" AutoEventWireup="true" CodeFile="ImovelINDIVIDUAL.aspx.cs" Inherits="imovelInd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="estilo/estilonoticias.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="conteudo3">

        <div id="titulonot2">
    <asp:Label ID="lblTitle" runat="server"></asp:Label>&nbsp;- Código
            <asp:Label ID="lblCod" runat="server"></asp:Label>
        </div>
     
        <div id="grid1" class="grid clearfix">
       <figure>
            <asp:Image ID="img1" runat="server" Height="350px" Width="400px" />
           </figure>
        </div>
        <div id="textonoticia">
            <span class="style2">Tipo do imóvel:&nbsp;</span><asp:Label ID="lblTp" runat="server"
                    style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    <p />
           <span class="style2">Endereço:&nbsp;</span><asp:Label ID="lblEnd" runat="server"
                    style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
                        ,&nbsp;N° <asp:Label ID="lblNum" runat="server"
                     style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
                <asp:Label ID="lblComp" runat="server"
                     style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
           
                <p />
                    <asp:Label ID="lblBai" runat="server" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    ,<asp:Label ID="lblCid" runat="server" 
                style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
            &nbsp;-
            
            <asp:Label ID="lblEst" runat="server" 
                style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
            
             <p />
                 <span class="style2">Valor de mercado: </span>R$&nbsp;<asp:Label ID="lblValorMerc" runat="server"
                     style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
            <br />
            <p />
            <span class="style2"> 
            Valor estimado para rebate:</span> R$&nbsp;<asp:Label ID="lblPreco" runat="server"
                     style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
            <p />
                <strong>Área:</strong>
                <asp:Label ID="lblArea" runat="server"></asp:Label>
                m²<p style="height: 114px">
                <span class="style2">Descrição:&nbsp;</span><asp:Label ID="lblText" runat="server" 
                    style="text-align: justify; font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label></p>
        </div>


      <div id="grid2" class="grid2">
          <figure>
            <asp:Image ID="img2" runat="server" Height="350px" Width="400px" />
           </figure>
        </div>

<!------------------------------------------------------------------------>


      <div id="grid3" class="grid3">
       <figure>
            <asp:Image ID="img3" runat="server" Height="350px" Width="400px" />
           </figure>
        </div>
     
         
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:SqlDataSource ID="sqlImo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
        
            
            SelectCommand="SELECT imovel.id_imo, imovel.nome_imo, imovel.estado_imo, imovel.cidade_imo, imovel.bairro_imo, imovel.endereco_imo, imovel.num_imo, imovel.complemento_imo, imovel.valormerc_imo, imovel.valorvenda_imo, imovel.descricao_imo, imovel.img1_imo, imovel.img2_imo, imovel.img3_imo, tipo_imovel.tipo_imo, imovel.area_imo FROM imovel INNER JOIN tipo_imovel ON imovel.id_tpimo = tipo_imovel.id_tpimo WHERE (imovel.id_imo = @cod)">
        <SelectParameters>
            <asp:SessionParameter Name="cod" SessionField="codImovel" />
        </SelectParameters>
    </asp:SqlDataSource>
   
        <br />
<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="font-weight: 700; color: #000000; text-align: right;">Ficou interessado? 
            Entre em contato conosco!</asp:LinkButton>


   
        <br />
        <br />
        <br />
        <br />


   
    <p style="font-size: x-large">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/c2capital_fundo.png" 
            Width="931px" />
    </p></div>

    
</asp:Content>

