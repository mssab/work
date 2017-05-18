<%@ Page Title="" Language="VB" MasterPageFile="~/master_kunde.master" AutoEventWireup="true" CodeFile="kunde_gsp.aspx.vb" Inherits="kunde_gsp" %>

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

    <h2>GSP</h2>

<p class="absatz">Im Bereich GSP können Sie sich nun Fotos der dekorierten Shops ansehen.</p>

<p class="absatz"><br/>Ihre Suche ergab insgesamt <strong>
    <asp:Label ID="treffer" runat="server" Text="0"></asp:Label></strong> Treffer.</p>
    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" 
        CellPadding="3" DataSourceID="SqlDataSource1" AllowSorting="True" 
        DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Bilder"  
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="CRM" HeaderText="CRM" 
                SortExpression="CRM" />
            <asp:BoundField DataField="GSP" HeaderText="GSP" 
                SortExpression="GSP" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                SortExpression="Eingangsdatum" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Fertigstelldatum" HeaderText="Fertigstelldatum" 
                SortExpression="Fertigstelldatum" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Kunde" HeaderText="Kunde" 
                SortExpression="Kunde" />
            <asp:BoundField DataField="Strasse" HeaderText="Strasse" 
                SortExpression="Strasse" />
            <asp:BoundField DataField="PLZ" HeaderText="PLZ" 
                SortExpression="PLZ" />
            <asp:BoundField DataField="Ort" HeaderText="Ort" 
                SortExpression="Ort" />            
            
        </Columns>
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>"     
        SelectCommand="SELECT gsp_shops.CRM, gsp_auftraege.GSP, gsp_auftraege.Status, gsp_auftraege.Eingangsdatum, gsp_auftraege.Fertigstelldatum, gsp_shops.Kunde, gsp_shops.Strasse, gsp_shops.PLZ, gsp_shops.Ort, gsp_auftraege.id FROM gsp_auftraege INNER JOIN gsp_shops ON gsp_auftraege.Kunde = gsp_shops.id ORDER BY gsp_auftraege.JobNr DESC">
    </asp:SqlDataSource>
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="feature_1">
    <h2>Ihre Suche</h2>
    <p>Hier können Sie gezielt nach Shops suchen. Geben Sie Ihren Suchbegriff (z.B. GPID, Firmenname, PLZ, Ort, Dekorationsart, Außendienst) in das Feld ein und klicken anschließend auf "SUCHEN".</p>
    <br />
         <asp:TextBox ID="suchbegriff" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Suche" />
        <br />
    </div>
    <div id="feature_2">
        <br />
        <h2>Export</h2>
        <p>Hier können Sie die Liste im Excel-Format exportieren.</p>
        <asp:Button ID="Button2" runat="server" Text="Export" />
    </div>
    <div id="feature_3"></div>
</asp:Content>
