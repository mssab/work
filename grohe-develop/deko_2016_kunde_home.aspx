<%@ Page Title="" Language="VB" MasterPageFile="~/master_kunde.master" AutoEventWireup="false" CodeFile="deko_2016_kunde_home.aspx.vb" Inherits="deko_2014_kunde_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/slides.min.jquery.js"></script>
	
	
	
<script type="text/javascript" src="fancybox/jquery.mousewheel-3.0.2.pack.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox-1.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.3.1.css" media="screen" />
    <script type="text/javascript">
		$(document).ready(function() {
			/*
			*   Examples - images
			*/

			$("a#example1").fancybox({
				'titleShow'		: false,
				'transitionIn'		: 'elastic',
				'transitionOut'		: 'elastic',
				'titlePosition' 	: 'over',
			});

			$("a#example2").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
			});

			$("a#example3").fancybox({
				'titleShow'		: false,
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'
			});

			$("a#example4").fancybox();

			$("a#example5").fancybox({
				'titlePosition'	: 'inside'
			});

			$("a#example6").fancybox({
				'titlePosition'	: 'over'
			});

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'elastic',
				'transitionOut'		: 'elastic',
				'titlePosition' 	: 'over',				
			});

			/*
			*   Examples - various
			*/

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$("#various3").fancybox({
				'width'				: '75%',
				'height'			: '75%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		});
	</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>Kundenportal</h2>
<p class="absatz">Herzlich willkommen!</p>

<p class="absatz">Ihr Login war erfolgreich!<br />
Im Bereich Schaufenster können Sie sich nun Fotos der dekorierten Shops ansehen.
</p>
<table border="0" cellpadding="0" cellspacing="0" style="margin-top: 50px;">
 <tr>
  <td><a href="deko_2016_kunde_schaufenster_liste.aspx"><img src="images/feature_unten_1.jpg" alt="" border="0" class="imgshadow" /></a></td>
  <td><%--<a href="images/Dekoschaufenster_2015.pdf" target="_blank"><img src="images/deko_2015_feature_unten_2.jpg" alt="" border="0" class="imgshadow" /></a>--%></td>
 </tr>
 <tr>
  <td style="height:10px"></td>
  <td></td>
 </tr>
 <tr>
  <td><a href="deko_2016_kunde_schaufenster_liste.aspx" style="color: #000; text-decoration:underline">Schaufenster - Deko-Status</a></td>
  <td><%--<a href="images/Dekoschaufenster_2015.pdf" target="_blank" style="color: #000; text-decoration:underline">Schaufenster  2015 -  Deko-Leitfaden</a>--%></td>
 </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="feature_1">
    
    <%--<span class="headline"><strong>Deko-Flight 2015</strong></span>
    
    <p class="feature"><strong>SPA</strong></p>
    
    <p class="feature"><a href="images/deko_2015_spa_gross.png" id="example1"><img src="images/deko_2015_grohe_spa_feature.jpg" alt="feature spa" border="0" class="imgshadow" /></a></p>
    
    <p class="feature_trennlinie"><img src="images/trennlinie_feature.jpg" alt="trennlinie feature" border="0" /></p>     --%> 
     
    </div>
    
       
    <div id="feature_3">
    
   <%-- <p class="feature"><strong>Standard</strong></p>
    
    
    
    <p class="feature"><a href="images/deko_2015_standard_gross.png" id="example1"><img src="images/deko_2015_grohe_schaufenster_feature.jpg" alt="feature schaufenster" border="0" class="imgshadow" /></a></p>
    
          --%>
     
    </div>
</asp:Content>
