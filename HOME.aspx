﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHOME.master" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="estilo/component.css" rel="stylesheet" type="text/css" />
    <link href="estilo/demo.css" rel="stylesheet" type="text/css" />
    <link href="estilo/estilohome.css" rel="stylesheet" type="text/css" />
    <link href="estilo/estilonoticias.css" rel="stylesheet" type="text/css" />
    <link href="estilo/normalize.css" rel="stylesheet" type="text/css" />
     <!-- Caption Style -->
    <style> 
        .captionOrange, .captionBlack
        {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }
        .captionOrange
        {
            background: #EB5100;
            background-color: rgba(235, 81, 0, 0.6);
        }
        .captionBlack
        {
        	font-size:16px;
            background: #000;
            background-color: rgba(0, 0, 0, 0.4);
        }
        a.captionOrange, A.captionOrange:active, A.captionOrange:visited
        {
        	color: #ffffff;
        	text-decoration: none;
        }
        a.captionOrange:hover
        {
            color: #eb5100;
            text-decoration: underline;
            background-color: #eeeeee;
            background-color: rgba(238, 238, 238, 0.7);
        }
        .bricon
        {
            background: url(Jssor/img/browser-icons.png);
        }
    </style>
    <!-- use jssor.slider.min.js instead for release -->
    <!-- jssor.slider.min.js = (jssor.core.js + jssor.utils.js + jssor.slider.js) -->
    <script type="text/javascript" src="Jssor/js/jssor.core.js"></script>
    <script type="text/javascript" src="Jssor/js/jssor.utils.js"></script>
    <script type="text/javascript" src="Jssor/js/jssor.slider.js"></script>
     <script>
         jssor_slider2_starter = function (containerId) {
             //Reference http://www.jssor.com/development/slider-with-slideshow-no-jquery.html
             //Reference http://www.jssor.com/development/tool-slideshow-transition-viewer.html

             var _SlideshowTransitions = [
             //Swing Outside in Stairs
            {$Duration: 1200, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $Outside: true, $Round: { $Left: 1.3, $Top: 2.5} }

             //Dodge Dance Outside out Stairs
            , { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.1, 0.9], $Top: [0.1, 0.9] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Clip: $JssorEasing$.$EaseOutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5} }

             //Dodge Pet Outside in Stairs
            , { $Duration: 1500, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseInWave, $Clip: $JssorEasing$.$EaseOutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5} }

             //Dodge Dance Outside in Random
            , { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Clip: $JssorEasing$.$EaseOutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5} }

             //Flutter out Wind
            , { $Duration: 1800, x: 1, y: 0.2, $Delay: 30, $Cols: 10, $Rows: 5, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $SlideOut: true, $Reverse: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2050, $Easing: { $Left: $JssorEasing$.$EaseInOutSine, $Top: $JssorEasing$.$EaseOutWave, $Clip: $JssorEasing$.$EaseInOutQuad }, $Outside: true, $Round: { $Top: 1.3} }

             //Collapse Stairs
            , { $Duration: 1200, $Delay: 30, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2049, $Easing: $JssorEasing$.$EaseOutQuad }

             //Collapse Random
            , { $Duration: 1000, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Easing: $JssorEasing$.$EaseOutQuad }

             //Vertical Chess Stripe
            , { $Duration: 1000, y: -1, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $ChessMode: { $Column: 12} }

             //Extrude out Stripe
            , { $Duration: 1000, x: -0.2, $Delay: 40, $Cols: 12, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInOutExpo, $Opacity: $JssorEasing$.$EaseInOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5} }

             //Dominoes Stripe
            , { $Duration: 2000, y: -1, $Delay: 60, $Cols: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: $JssorEasing$.$EaseOutJump, $Round: { $Top: 1.5} }
            ];

             var options = {
                 $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                 $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                 $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                 $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 1

                 $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                 $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                 $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                 //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                 //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                 $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                 $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                 $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                 $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                 $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                 $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                 $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                     $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                     $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                     $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                     $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                 },

                 $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                     $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                     $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                     $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                     $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                     $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                     $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                     $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                     $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                 },

                 $ArrowNavigatorOptions: {
                     $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                     $ChanceToShow: 2                                //[Required] 0 Never, 1 Mouse Over, 2 Always
                 }
             };

             var jssor_slider2 = new $JssorSlider$(containerId, options);

             //responsive code begin
             //you can remove responsive code if you don't want the slider scales while window resizes
             function ScaleSlider() {
                 var parentWidth = jssor_slider2.$Elmt.parentNode.clientWidth;
                 if (parentWidth)
                     jssor_slider2.$SetScaleWidth(Math.min(parentWidth, 600));
                 else
                     $JssorUtils$.$Delay(ScaleSlider, 30);
             }

             ScaleSlider();
             $JssorUtils$.$AddEvent(window, "load", ScaleSlider);


             if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                 $JssorUtils$.$OnWindowResize(window, ScaleSlider);
             }

             //if (navigator.userAgent.match(/(iPhone|iPod|iPad)/)) {
             //    $JssorUtils$.$AddEvent(window, "orientationchange", ScaleSlider);
             //}
             //responsive code end
         }
    </script>

    <script src="js/snap.svg-min.js" type="text/javascript"></script>

    
<script language="javascript" type="text/javascript" for="FlashID" event="onclick">
// <![CDATA[
return FlashID_onclick()
// ]]>
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="slide">
 <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider2_container" style="position: relative; width: 443px;
        height: 310px; float:left; margin-left: 22px;">

        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(Jssor/img/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px;
            overflow: hidden;">
            <div>
                <a u=image href="#"><img src="Jssor/img/landscape/foto1.jpg" /></a>
            </div>
            <div>
                <a u=image href="#"><img src="Jssor/img/landscape/foto2.jpg" /></a>
            </div>
            <div>
                <a u=image href="#"><img src="Jssor/img/landscape/foto3.jpg" /></a>
            </div>
            <div>
                <a u=image href="#"><img src="Jssor/img/landscape/foto4.jpg" /></a>
            </div>
            <div>
                <a u=image href="#"><img src="Jssor/img/landscape/foto5.jpg" /></a>
            </div>
        </div>
        
        <!-- Bullet Navigator Skin Begin -->
        <!-- jssor slider bullet navigator skin 01 -->
        <style>
            /*
            .jssorb01 div           (normal)
            .jssorb01 div:hover     (normal mouseover)
            .jssorb01 .av           (active)
            .jssorb01 .av:hover     (active mouseover)
            .jssorb01 .dn           (mousedown)
            */
            .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av
            {
                filter: alpha(opacity=70);
                opacity: .7;
                overflow:hidden;
                cursor: pointer;
                border: #000 1px solid;
            }
            .jssorb01 div { background-color: gray; }
            .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
            .jssorb01 .av { background-color: #fff; }
            .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb01" style="position: absolute; float: right; bottom: 16px; right: -140px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype" style="POSITION: absolute; WIDTH: 12px; HEIGHT: 12px;"></div>
        </div>
        <!-- Bullet Navigator Skin End -->
        
        <!-- Arrow Navigator Skin Begin -->
        <style>
            /* jssor slider arrow navigator skin 05 css */
            /*
            .jssora05l              (normal)
            .jssora05r              (normal)
            .jssora05l:hover        (normal mouseover)
            .jssora05r:hover        (normal mouseover)
            .jssora05ldn            (mousedown)
            .jssora05rdn            (mousedown)
            */
            .jssora05l, .jssora05r, .jssora05ldn, .jssora05rdn
            {
            	position: absolute;
            	cursor: pointer;
            	display: block;
                background: url(Jssor/img/a17.png) no-repeat;
                overflow:hidden;
            }
            .jssora05l { background-position: -10px -40px; }
            .jssora05r { background-position: -70px -40px; }
            .jssora05l:hover { background-position: -130px -40px; }
            .jssora05r:hover { background-position: -190px -40px; }
            .jssora05ldn { background-position: -250px -40px; }
            .jssora05rdn { background-position: -310px -40px; }
            .UOLWidgetsStyle
            {
                text-align: left;
            }
            .style2
            {
                text-align: center;
            }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora05l" style="width: 40px; height: 40px; top: 123px; left: 8px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora05r" style="width: 40px; height: 40px; top: 123px; right: -152px">
        </span>
        <!-- Arrow Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">jquery content slider</a>
        <!-- Trigger -->
        <script>
            jssor_slider2_starter('slider2_container');
        </script>
    </div>
    <!-- Jssor Slider End -->


    </div>

<div id="imoveis">
<!-------------------------------------------------------------------------------->
 <div class="container">

    <section id="grid" class="grid clearfix">

    
				<a href="ImovelINDIVIDUAL.aspx" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
					<figure>
                    
						<asp:ImageButton ID="ImageButton1" runat="server" 
            Height="305px" Width= "250px"></asp:ImageButton>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
						<figcaption>
							<h2><asp:Label ID="Label1" runat="server"></asp:Label></h2>
						</figcaption>
					</figure>
				</a>


				<a href="ImovelINDIVIDUAL.aspx" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<asp:ImageButton ID="ImageButton2" runat="server" 
            Height="305px" Width= "250px"></asp:ImageButton>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
						<figcaption>
							<h2><asp:Label ID="Label3" runat="server"></asp:Label></h2>
						</figcaption>
					</figure>
				</a>

<a href="ImovelINDIVIDUAL.aspx" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
					<figure>
						<asp:ImageButton ID="ImageButton3" runat="server" 
            Height="305px" Width= "250px"></asp:ImageButton>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
						<figcaption>
							<h2><asp:Label ID="Label5" runat="server"></asp:Label></h2>
						</figcaption>
					</figure>
				</a>

				
			</section>
            </div>

             <asp:SqlDataSource ID="sqlCarrega" runat="server" 
            ConnectionString="<%$ ConnectionStrings:c2capitalConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:c2capitalConnectionString.ProviderName %>" 
            SelectCommand="SELECT id_imo, nome_imo, estado_imo, cidade_imo, bairro_imo, endereco_imo, num_imo, complemento_imo, id_tpimo, valormerc_imo, valorvenda_imo, img1_imo, img2_imo, img3_imo FROM imovel ORDER BY id_imo DESC">
        </asp:SqlDataSource>
        <!-------------------------------------------------------------------------------->
        
            <script>
                (function () {

                    function init() {
                        var speed = 250,
						easing = mina.easeinout;

                        [ ].slice.call(document.querySelectorAll('#grid > a')).forEach(function (el) {
                            var s = Snap(el.querySelector('svg')), path = s.select('path'),
							pathConfig = {
							    from: path.attr('d'),
							    to: el.getAttribute('data-path-hover')
							};

                            el.addEventListener('mouseenter', function () {
                                path.animate({ 'path': pathConfig.to }, speed, easing);
                            });

                            el.addEventListener('mouseleave', function () {
                                path.animate({ 'path': pathConfig.from }, speed, easing);
                            });
                        });
                    }

                    init();

                })();
		</script>
    
<!----------------------------------------------------------------------------------------------->
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
    <div id="linha4"></div>
    
    <p class="style2">
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
    Confira algumas das notícias!</p>
    <div id="noticias">

              
<div id="noticia0">
 <iframe name="gadgetNot" id="gadgetNot" src="http://estadaomt.com.br/gadget-iframe.php?bg=F5F5F5&tam=14&cor=050505&corH=FFFFFF&dec=none&qtd=4&alt=270&cat=30" width="200" height="290" frameborder="0"></iframe>

  </div>
        <div id="noticia1"><!--UOL Widgets - widgets.uol.com.br -->
       
<div class="UOLWidgetsStyle">
<script src="http://widgets.uol.com.br/uolwidgetstools.js?estacao=economia&tema=noticias&skin=1" type="text/javascript"></script>
<a href="http://economia.uol.com.br" target="_blank">http://economia.uol.com.br</a>
</div>
<!--//UOL Widgets--></div>
        <div id="noticia2"><script src="http://g1.globo.com/Portal/G1V2/js/addNewsVertical.js" type="text/javascript"></script></div>
           </div>
</asp:Content>
