<%@ Page Title="" Language="VB" MasterPageFile="~/master_kunde.master" AutoEventWireup="false" CodeFile="deko_2017_kunde_schaufenster_detail.aspx.vb" Inherits="kunde_schaufenster_detail" %>

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
    <asp:Panel ID="bilder_vorhanden" runat="server">
        <table>
        <tr>
            <td><h2>Vorher</h2></td>
            <td><h2>Nachher</h2></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_1" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_2" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_3" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="vorher_4" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_4" runat="server"></asp:Label></td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="bilder_nicht_vorhanden" runat="server">
        <h2>Für diese GP-ID liegen im Dekoportal leider noch keine Fotos vor.</h2>
    </asp:Panel>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="feature_1">
    <h2><asp:Label ID="stand" runat="server"></asp:Label></h2>
    <table>
        <tr>
            <td style="width: 50%;">
                <span style="vertical-align: text-bottom;"><asp:ImageButton ID="nav_back" runat="server" Width="16px" Height="16px" ImageUrl="~/images/back.gif" /></span>
                
                <span style="margin-top:0px; padding-bottom:2px;"><asp:LinkButton ID="LinkButton2" Height="16px"  ForeColor="Black" runat="server">vorherige GP-ID</asp:LinkButton></span>
            </td>
            <td style="width:50%;">
                <span style="margin-top:0px; padding-bottom:2px;"><asp:LinkButton ID="LinkButton1"  Height="16px" ForeColor="Black" runat="server">nächste GP-ID</asp:LinkButton></span>                 
                <span style="vertical-align: text-bottom;"><asp:ImageButton ID="nav_fwd" runat="server"  Width="16px" Height="16px" ImageUrl="~/images/forward.gif" /></span> 
            </td>
            </tr>
            <tr>
            <td style="width: 50%;">
                <span style="vertical-align: text-bottom;"><asp:ImageButton ID="nav_search" runat="server" Width="16px" Height="16px" ImageUrl="~/images/back.gif" /></span>
                
                <span style="margin-top:0px; padding-bottom:2px;"><asp:LinkButton ID="LinkButton3" Height="16px"  ForeColor="Black" runat="server">zur Übersicht</asp:LinkButton></span>
            </td>
            <td style="width:50%;">
                
            </td>
        </tr>
    </table>
        
        <br />
    </div>
    <div id="feature_2">
        <h2>GP-ID</h2>
        <h2 style="color: #ff4800;;"><asp:Label ID="shop" runat="server" ></asp:Label></h2>
        <h2><asp:Label ID="nummer" runat="server" ></asp:Label></h2>
        <p><b><asp:Label ID="adresse" runat="server"></asp:Label></b></p>
        <p><b><asp:Label ID="telefon" runat="server"></asp:Label></b></p>
        <p><b><asp:Label ID="dekoart" runat="server"></asp:Label></b></p>
        <p><b><asp:Label ID="GHL" runat="server"></asp:Label></b></p>
    </div>
    <div id="feature_3">
        <h2>Ergebnis</h2>
        <p><b><asp:Label ID="ergebnis" runat="server" ></asp:Label></b></p>
    </div>
</asp:Content>

