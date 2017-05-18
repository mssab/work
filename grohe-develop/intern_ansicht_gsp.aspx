<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern_gsp.master" AutoEventWireup="false" CodeFile="intern_ansicht_gsp.aspx.vb" Inherits="intern_ansicht_gsp" %>

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
    <h1>Grohe Service Point</h1>
    <table>
        <tr>
            <td style="width:10%">Name:</td>
            <td><asp:Label ID="name" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Straße:</td>
            <td><asp:Label ID="strasse" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>PLZ und Ort:</td>
            <td><asp:Label ID="plz_ort" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Dekoration:</td>
            <td><asp:Label ID="deko" runat="server"></asp:Label></td>
        </tr>        
    </table>
    <br />
    
    <h1>Bilder</h1>
    <asp:Panel ID="bilder_vorhanden" runat="server">
        <table style="width:100%;">
        <tr>
            <td style="width: 50%;"><h2>Vorher</h2></td>
            <td style="width: 50%;"><h2>Nachher</h2></td>
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
        <tr>
            <td><asp:Label ID="vorher_5" runat="server"></asp:Label></td>
            <td><asp:Label ID="nachher_5" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 50%;"><h2>Bericht</h2></td>
            <td style="width: 50%;">&nbsp;</td>
        </tr>
        <tr><!-- Berichtsbild anzeigen -->
            <td><asp:Label ID="bericht" runat="server"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="bilder_nicht_vorhanden" runat="server">
        <h2>Für diese Jobnummer liegen im GSP-Portal leider noch keine Fotos vor.</h2>
    </asp:Panel>
    <h1>Bericht</h1>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" CancelText="Abbruch" EditText="Bearbeiten" UpdateText="Speichern" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Team" HeaderText="Team" 
                SortExpression="Team" />
            <asp:BoundField DataField="JobNr" HeaderText="JobNr" SortExpression="JobNr" />
            <asp:BoundField DataField="GSP" 
                HeaderText="GSP" SortExpression="GSP" />
            <asp:BoundField DataField="Umruestung" 
                HeaderText="Umruestung" 
                SortExpression="Umruestung" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Bemerkungen" 
                HeaderText="Bemerkungen" SortExpression="Bemerkungen" />
            <asp:BoundField DataField="Eingangsdatum" HeaderText="Eingangsdatum" 
                SortExpression="Eingangsdatum" />
            <asp:BoundField DataField="Fertigstelldatum" HeaderText="Fertigstelldatum" 
                SortExpression="Fertigstelldatum" />
            <asp:BoundField DataField="Kunde" 
                HeaderText="Kunde" SortExpression="Kunde" />
            <asp:BoundField DataField="Regalmeter" 
                HeaderText="Regalmeter" 
                SortExpression="Regalmeter" />
            <asp:BoundField DataField="Regallaenge" HeaderText="Regallaenge" 
                SortExpression="Regallaenge" />
            <asp:BoundField DataField="freigabe_bericht_extern" HeaderText="freigabe_bericht_extern" 
                SortExpression="freigabe_bericht_extern" />
            <asp:BoundField DataField="freigabe_bilder_extern" HeaderText="freigabe_bilder_extern" 
                SortExpression="freigabe_bilder_extern" />
            <asp:BoundField DataField="freigabe_bericht_intern" 
                HeaderText="freigabe_bericht_intern" 
                SortExpression="freigabe_bericht_intern" />
            <asp:BoundField DataField="freigabe_bilder_intern" HeaderText="freigabe_bilder_intern" 
                SortExpression="freigabe_bilder_intern" />
            <asp:BoundField DataField="angenommen" 
                HeaderText="angenommen" SortExpression="angenommen" />
            <asp:BoundField DataField="abgerechnet" HeaderText="abgerechnet" 
                SortExpression="abgerechnet" />
            <asp:BoundField DataField="anfragedatum" 
                HeaderText="anfragedatum" SortExpression="anfragedatum" />
            
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [gsp_auftraege] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [gsp_auftraege] ([Team], [JobNr], [GSP], [Umruestung], [Status], [Bemerkungen], [Eingangsdatum], [Fertigstelldatum], [Kunde], [Regalmeter], [Regallaenge], [freigabe_bericht_extern], [freigabe_bilder_extern], [freigabe_bericht_intern], [freigabe_bilder_intern], [angenommen], [abgerechnet], [anfragedatum]) VALUES (@Team, @JobNr, @GSP, @Umruestung, @Status, @Bemerkungen, @Eingangsdatum, @Fertigstelldatum, @Kunde, @Regalmeter, @Regallaenge, @freigabe_bericht_extern, @freigabe_bilder_extern, @freigabe_bericht_intern, @freigabe_bilder_intern, @angenommen, @abgerechnet, @anfragedatum)" 
        SelectCommand="SELECT * FROM [gsp_auftraege] WHERE ([id] = @id)" 
        
        UpdateCommand="UPDATE [gsp_auftraege] SET [Team] = @Team, [JobNr] = @JobNr, [GSP] = @GSP, [Umruestung] = @Umruestung, [Status] = @Status, [Bemerkungen] = @Bemerkungen, [Eingangsdatum] = @Eingangsdatum, [Fertigstelldatum] = @Fertigstelldatum, [Kunde] = @Kunde, [Regalmeter] = @Regalmeter, [Regallaenge] = @Regallaenge, [freigabe_bericht_extern] = @freigabe_bericht_extern, [freigabe_bilder_extern] = @freigabe_bilder_extern, [freigabe_bericht_intern] = @freigabe_bericht_intern, [freigabe_bilder_intern] = @freigabe_bilder_intern, [angenommen] = @angenommen, [abgerechnet] = @abgerechnet, [anfragedatum] = @anfragedatum WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Team" Type="Int32" />
            <asp:Parameter Name="JobNr" Type="Int32" />
            <asp:Parameter Name="GSP" Type="String" />
            <asp:Parameter Name="Umruestung" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Bemerkungen" Type="String" />
            <asp:Parameter Name="Eingangsdatum" DbType="Date" />
            <asp:Parameter Name="Fertigstelldatum" DbType="Date" />
            <asp:Parameter Name="Kunde" Type="Int32" />
            <asp:Parameter Name="Regalmeter" Type="String" />
            <asp:Parameter Name="Regallaenge" Type="String" />
            <asp:Parameter Name="freigabe_bericht_extern" Type="String" />
            <asp:Parameter Name="freigabe_bilder_extern" Type="String" />
            <asp:Parameter Name="freigabe_bericht_intern" Type="String" />
            <asp:Parameter Name="freigabe_bilder_intern" Type="String" />
            <asp:Parameter Name="angenommen" Type="String" />
            <asp:Parameter Name="abgerechnet" Type="String" />
            <asp:Parameter Name="anfragedatum" DbType="Date" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="id" 
                QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Team" Type="Int32" />
            <asp:Parameter Name="JobNr" Type="Int32" />
            <asp:Parameter Name="GSP" Type="String" />
            <asp:Parameter Name="Umruestung" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Bemerkungen" Type="String" />
            <asp:Parameter Name="Eingangsdatum" DbType="Date" />
            <asp:Parameter Name="Fertigstelldatum" DbType="Date" />
            <asp:Parameter Name="Kunde" Type="Int32" />
            <asp:Parameter Name="Regalmeter" Type="String" />
            <asp:Parameter Name="Regallaenge" Type="String" />
            <asp:Parameter Name="freigabe_bericht_extern" Type="String" />
            <asp:Parameter Name="freigabe_bilder_extern" Type="String" />
            <asp:Parameter Name="freigabe_bericht_intern" Type="String" />
            <asp:Parameter Name="freigabe_bilder_intern" Type="String" />
            <asp:Parameter Name="angenommen" Type="String" />
            <asp:Parameter Name="abgerechnet" Type="String" />
            <asp:Parameter Name="anfragedatum" DbType="Date" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

