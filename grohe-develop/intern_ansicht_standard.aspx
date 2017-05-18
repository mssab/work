<%@ Page Title="" Language="VB" MasterPageFile="~/master_intern.master" AutoEventWireup="false" CodeFile="intern_ansicht_standard.aspx.vb" Inherits="intern_ansicht_spa" %>

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
    <h1>Grohe SPA</h1>
    <table>
        <tr>
            <td>Name:</td>
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
    <h1>Bericht</h1>
     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" 
        AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EnableModelValidation="True">
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
        <asp:CommandField ShowEditButton="True" CancelText="Abbruch" EditText="Bearbeiten" UpdateText="Speichern"  />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="aufkleber_grohe_logo" 
                HeaderText="aufkleber_grohe_logo" SortExpression="aufkleber_grohe_logo" />
            <asp:BoundField DataField="aufkleber_grohe_logo_note" 
                HeaderText="aufkleber_grohe_logo_note" 
                SortExpression="aufkleber_grohe_logo_note" />
            <asp:BoundField DataField="aufkleber_tempesta" HeaderText="aufkleber_tempesta" 
                SortExpression="aufkleber_tempesta" />
            <asp:BoundField DataField="aufkleber_tempesta_note" 
                HeaderText="aufkleber_tempesta_note" SortExpression="aufkleber_tempesta_note" />
            <asp:BoundField DataField="aufkleber_qr" HeaderText="aufkleber_qr" 
                SortExpression="aufkleber_qr" />
            <asp:BoundField DataField="aufkleber_qr_note" HeaderText="aufkleber_qr_note" 
                SortExpression="aufkleber_qr_note" />
            <asp:BoundField DataField="banner_eurocube" HeaderText="banner_eurocube" 
                SortExpression="banner_eurocube" />
            <asp:BoundField DataField="banner_eurocube_note" 
                HeaderText="banner_eurocube_note" SortExpression="banner_eurocube_note" />
            <asp:BoundField DataField="banner_kind" HeaderText="banner_kind" 
                SortExpression="banner_kind" />
            <asp:BoundField DataField="banner_kind_note" HeaderText="banner_kind_note" 
                SortExpression="banner_kind_note" />
            <asp:BoundField DataField="banner_grohtherm" HeaderText="banner_grohtherm" 
                SortExpression="banner_grohtherm" />
            <asp:BoundField DataField="banner_grotherm_note" 
                HeaderText="banner_grotherm_note" SortExpression="banner_grotherm_note" />
            <asp:BoundField DataField="wuerfel_millieu" HeaderText="wuerfel_millieu" 
                SortExpression="wuerfel_millieu" />
            <asp:BoundField DataField="wuerfel_millieu_note" 
                HeaderText="wuerfel_millieu_note" SortExpression="wuerfel_millieu_note" />
            <asp:BoundField DataField="wuerfel_germany" HeaderText="wuerfel_germany" 
                SortExpression="wuerfel_germany" />
            <asp:BoundField DataField="wuerfel_germany_note" 
                HeaderText="wuerfel_germany_note" SortExpression="wuerfel_germany_note" />
            <asp:BoundField DataField="aufsteller_garantie" 
                HeaderText="aufsteller_garantie" SortExpression="aufsteller_garantie" />
            <asp:BoundField DataField="aufsteller_garantie_note" 
                HeaderText="aufsteller_garantie_note" 
                SortExpression="aufsteller_garantie_note" />
            <asp:BoundField DataField="display_mit_beleuchtung" 
                HeaderText="display_mit_beleuchtung" SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_mit_beleuchtung_note" 
                HeaderText="display_mit_beleuchtung_note" 
                SortExpression="display_mit_beleuchtung_note" />
            <asp:BoundField DataField="display_ohne_beleuchtung" 
                HeaderText="display_ohne_beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung_note" 
                HeaderText="display_ohne_beleuchtung_note" 
                SortExpression="display_ohne_beleuchtung_note" />
            <asp:BoundField DataField="quitsche_ente" HeaderText="quitsche_ente" 
                SortExpression="quitsche_ente" />
            <asp:BoundField DataField="quitsche_ente_note" HeaderText="quitsche_ente_note" 
                SortExpression="quitsche_ente_note" />
            <asp:BoundField DataField="anzahl_banner" HeaderText="anzahl_banner" 
                SortExpression="anzahl_banner" />
            <asp:BoundField DataField="stromanschluss_vorhanden" 
                HeaderText="stromanschluss_vorhanden" 
                SortExpression="stromanschluss_vorhanden" />
            <asp:BoundField DataField="stromanschluss_gelegt" 
                HeaderText="stromanschluss_gelegt" SortExpression="stromanschluss_gelegt" />
            <asp:BoundField DataField="anzahl_mehrfachsteckdosen" 
                HeaderText="anzahl_mehrfachsteckdosen" 
                SortExpression="anzahl_mehrfachsteckdosen" />
            <asp:BoundField DataField="schaufensterhoehe" HeaderText="schaufensterhoehe" 
                SortExpression="schaufensterhoehe" />
            <asp:BoundField DataField="attraktivitaet" HeaderText="attraktivitaet" 
                SortExpression="attraktivitaet" />
            <asp:BoundField DataField="aktivitaet" HeaderText="aktivitaet" 
                SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" 
                HeaderText="aktivitaet_bemerkung" SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" 
                HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" HeaderText="eingang" 
                SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" 
                HeaderText="keine_deko_generell" SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
            
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [einsatzbericht_enjoy] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [einsatzbericht_enjoy] ([stammdaten_id], [datum], [aufkleber_grohe_logo], [aufkleber_grohe_logo_note], [aufkleber_tempesta], [aufkleber_tempesta_note], [aufkleber_qr], [aufkleber_qr_note], [banner_eurocube], [banner_eurocube_note], [banner_kind], [banner_kind_note], [banner_grohtherm], [banner_grotherm_note], [wuerfel_millieu], [wuerfel_millieu_note], [wuerfel_germany], [wuerfel_germany_note], [aufsteller_garantie], [aufsteller_garantie_note], [display_mit_beleuchtung], [display_mit_beleuchtung_note], [display_ohne_beleuchtung], [display_ohne_beleuchtung_note], [quitsche_ente], [quitsche_ente_note], [anzahl_banner], [stromanschluss_vorhanden], [stromanschluss_gelegt], [anzahl_mehrfachsteckdosen], [schaufensterhoehe], [attraktivitaet], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @aufkleber_grohe_logo, @aufkleber_grohe_logo_note, @aufkleber_tempesta, @aufkleber_tempesta_note, @aufkleber_qr, @aufkleber_qr_note, @banner_eurocube, @banner_eurocube_note, @banner_kind, @banner_kind_note, @banner_grohtherm, @banner_grotherm_note, @wuerfel_millieu, @wuerfel_millieu_note, @wuerfel_germany, @wuerfel_germany_note, @aufsteller_garantie, @aufsteller_garantie_note, @display_mit_beleuchtung, @display_mit_beleuchtung_note, @display_ohne_beleuchtung, @display_ohne_beleuchtung_note, @quitsche_ente, @quitsche_ente_note, @anzahl_banner, @stromanschluss_vorhanden, @stromanschluss_gelegt, @anzahl_mehrfachsteckdosen, @schaufensterhoehe, @attraktivitaet, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [einsatzbericht_enjoy] WHERE ([stammdaten_id] = @stammdaten_id)" 
        UpdateCommand="UPDATE [einsatzbericht_enjoy] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [aufkleber_grohe_logo] = @aufkleber_grohe_logo, [aufkleber_grohe_logo_note] = @aufkleber_grohe_logo_note, [aufkleber_tempesta] = @aufkleber_tempesta, [aufkleber_tempesta_note] = @aufkleber_tempesta_note, [aufkleber_qr] = @aufkleber_qr, [aufkleber_qr_note] = @aufkleber_qr_note, [banner_eurocube] = @banner_eurocube, [banner_eurocube_note] = @banner_eurocube_note, [banner_kind] = @banner_kind, [banner_kind_note] = @banner_kind_note, [banner_grohtherm] = @banner_grohtherm, [banner_grotherm_note] = @banner_grotherm_note, [wuerfel_millieu] = @wuerfel_millieu, [wuerfel_millieu_note] = @wuerfel_millieu_note, [wuerfel_germany] = @wuerfel_germany, [wuerfel_germany_note] = @wuerfel_germany_note, [aufsteller_garantie] = @aufsteller_garantie, [aufsteller_garantie_note] = @aufsteller_garantie_note, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_mit_beleuchtung_note] = @display_mit_beleuchtung_note, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [display_ohne_beleuchtung_note] = @display_ohne_beleuchtung_note, [quitsche_ente] = @quitsche_ente, [quitsche_ente_note] = @quitsche_ente_note, [anzahl_banner] = @anzahl_banner, [stromanschluss_vorhanden] = @stromanschluss_vorhanden, [stromanschluss_gelegt] = @stromanschluss_gelegt, [anzahl_mehrfachsteckdosen] = @anzahl_mehrfachsteckdosen, [schaufensterhoehe] = @schaufensterhoehe, [attraktivitaet] = @attraktivitaet, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_note" Type="Int32" />
            <asp:Parameter Name="banner_eurocube" Type="Int32" />
            <asp:Parameter Name="banner_eurocube_note" Type="Int32" />
            <asp:Parameter Name="banner_kind" Type="Int32" />
            <asp:Parameter Name="banner_kind_note" Type="Int32" />
            <asp:Parameter Name="banner_grohtherm" Type="Int32" />
            <asp:Parameter Name="banner_grotherm_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="quitsche_ente" Type="Int32" />
            <asp:Parameter Name="quitsche_ente_note" Type="Int32" />
            <asp:Parameter Name="anzahl_banner" Type="Int32" />
            <asp:Parameter Name="stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="stromanschluss_gelegt" Type="String" />
            <asp:Parameter Name="anzahl_mehrfachsteckdosen" Type="Int32" />
            <asp:Parameter Name="schaufensterhoehe" Type="Int32" />
            <asp:Parameter Name="attraktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="stammdaten_id" QueryStringField="id" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_grohe_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta" Type="Int32" />
            <asp:Parameter Name="aufkleber_tempesta_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_note" Type="Int32" />
            <asp:Parameter Name="banner_eurocube" Type="Int32" />
            <asp:Parameter Name="banner_eurocube_note" Type="Int32" />
            <asp:Parameter Name="banner_kind" Type="Int32" />
            <asp:Parameter Name="banner_kind_note" Type="Int32" />
            <asp:Parameter Name="banner_grohtherm" Type="Int32" />
            <asp:Parameter Name="banner_grotherm_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu" Type="Int32" />
            <asp:Parameter Name="wuerfel_millieu_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_germany_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="quitsche_ente" Type="Int32" />
            <asp:Parameter Name="quitsche_ente_note" Type="Int32" />
            <asp:Parameter Name="anzahl_banner" Type="Int32" />
            <asp:Parameter Name="stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="stromanschluss_gelegt" Type="String" />
            <asp:Parameter Name="anzahl_mehrfachsteckdosen" Type="Int32" />
            <asp:Parameter Name="schaufensterhoehe" Type="Int32" />
            <asp:Parameter Name="attraktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

