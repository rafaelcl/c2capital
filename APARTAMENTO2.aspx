<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME.master" AutoEventWireup="true" CodeFile="APARTAMENTO2.aspx.cs" Inherits="noticias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="estilo/estilonoticias.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <div id="titlenot">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/img/tituloapart.fw.png" onclick="ImageButton1_Click" Width="900px"  />
        </div>
        <div id="conteudo3">

            <div id="notbox1">
            <div id="imgnot1">
                <asp:ImageButton ID="img1" runat="server" Height="200px" Width="300px" 
                    onclick="img1_Click" />
              </div>
            <div id="nottxt1">
                <asp:HyperLink ID="lbltitle1" runat="server" 
                    style="font-weight: 700; font-family: 'Times New Roman'; font-size: 20px; color: #000000"></asp:HyperLink>
                <asp:Label ID="lblCod1" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblend1" runat="server" style="color: #000000"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbldesc1" runat="server" style="color: #000000"></asp:Label>
              </div>
            </div>

            <div id="linha"></div>
           
            <div id="notbox2">
            <div id="imgnot2">
                <asp:ImageButton ID="img2" runat="server" Height="200px" Width="300px" 
                    onclick="img2_Click" />
                </div>
            <div id="nottxt2">
                <asp:HyperLink ID="lbltitle2" runat="server" 
                    style="color: #000000; font-size: 20px; font-family:'Times New Roman' ;font-weight: 700"></asp:HyperLink>
                <asp:Label ID="lblCod2" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblend2" runat="server" style="color: #000000"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbldesc2" runat="server" style="color: #000000"></asp:Label>
                </div>
            </div>

            <div id="linha1"></div>

            <div id="notbox3">
            <div id="imgnot3">
                <asp:ImageButton ID="img3" runat="server" Height="200px" Width="300px"
                    onclick="img3_Click" />
                </div>
                        <div id="nottxt3">
                <asp:HyperLink ID="lbltitle3" runat="server" 
                    style="color: #000000; font-size: 20px; font-family:'Times New Roman' ;font-weight: 700"></asp:HyperLink>
                <asp:Label ID="lblCod3" runat="server"></asp:Label>
                <br />
              <asp:Label ID="lblend3" runat="server" style="color: #000000"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbldesc3" runat="server" style="color: #000000"></asp:Label>
                </div>
            </div>

            <div id="linha2"></div>

            <div id="notbox4">
            <div id="imgnot4">
                <asp:ImageButton ID="img4" runat="server" Height="200px" Width="300px"
                    onclick="img4_Click" />
                </div>
                
            <div id="nottxt4">
                <asp:HyperLink ID="lbltitle4" runat="server" 
                    
                    style="color: #000000; font-weight: 700; font-size: 20px; font-family:'Times New Roman';">[lbltitle4]</asp:HyperLink>
                <asp:Label ID="lblCod4" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblend4" runat="server" style="color: #000000"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbldesc4" runat="server" style="color: #000000"></asp:Label>
                </div></div><div id="linha3">
                
                <asp:SqlDataSource ID="sqlImo" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
                    
                    
                    
                    SelectCommand="SELECT imovel.id_imo, tipo_imovel.tipo_imo, imovel.nome_imo, imovel.estado_imo, imovel.cidade_imo, imovel.bairro_imo, imovel.endereco_imo, imovel.num_imo, imovel.complemento_imo, imovel.valormerc_imo, imovel.valorvenda_imo, imovel.descricao_imo, imovel.img1_imo, imovel.img2_imo, imovel.img3_imo, imovel.area_imo FROM imovel INNER JOIN tipo_imovel ON imovel.id_tpimo = tipo_imovel.id_tpimo WHERE (tipo_imovel.tipo_imo = 'Apartamento') ORDER BY imovel.id_imo DESC">
                </asp:SqlDataSource>
            </div>
            <div id="link">
            <asp:HyperLink ID="hl1" runat="server"></asp:HyperLink>
            <asp:HyperLink ID="hl2" runat="server"></asp:HyperLink>
            <asp:HyperLink ID="hl3" runat="server"></asp:HyperLink>
            </div>
        </div>
</asp:Content>

