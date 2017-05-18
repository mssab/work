<%@ Page Title="" Language="VB" MasterPageFile="~/deko_2014_master_intern.master" AutoEventWireup="false" CodeFile="deko_2014_intern_ansicht_spa.aspx.vb" Inherits="deko_2014_intern_ansicht_spa" %>

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
        <tr>
            <td></td>
            <td><h2>Berichtsbild</h2></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="bericht" runat="server"></asp:Label></td>
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
        <HeaderStyle BackColor="#A09E97" />
        <AlternatingRowStyle BackColor="#DFDFDF" />
        <CommandRowStyle BackColor="#A09E97" Font-Bold="true" />
        <Fields>
            <asp:CommandField ShowEditButton="True" CancelText="Abbruch" EditText="Bearbeiten" UpdateText="Speichern"  />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="stammdaten_id" HeaderText="stammdaten_id" 
                SortExpression="stammdaten_id" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:BoundField DataField="aufkleber_f_digital" 
                HeaderText="aufkleber_f_digital" SortExpression="aufkleber_f_digital" />
            <asp:BoundField DataField="aufkleber_f_digital_note" 
                HeaderText="aufkleber_f_digital_note" 
                SortExpression="aufkleber_f_digital_note" />
            <asp:BoundField DataField="banner_f_digital_deluxe" HeaderText="banner_f_digital_deluxe" 
                SortExpression="banner_f_digital_deluxe" />
            <asp:BoundField DataField="banner_f_digital_deluxe_note" 
                HeaderText="banner_f_digital_deluxe_note" 
                SortExpression="banner_f_digital_deluxe_note" />
            <asp:BoundField DataField="banner_p_s_ncc" HeaderText="banner_p_s_ncc" 
                SortExpression="banner_p_s_ncc" />
            <asp:BoundField DataField="banner_p_s_ncc_note" HeaderText="banner_p_s_ncc_note" 
                SortExpression="banner_p_s_ncc_note" />
            <asp:BoundField DataField="wuerfel_made_in_germany" 
                HeaderText="deko_cube_spa" 
                SortExpression="wuerfel_made_in_germany" />
            <asp:BoundField DataField="wuerfel_made_in_germany_note" 
                HeaderText="deko_cube_spa_note" 
                SortExpression="wuerfel_made_in_germany_note" />
            <asp:BoundField DataField="hot_stones" HeaderText="hot_stones" 
                SortExpression="hot_stones" />
            <asp:BoundField DataField="hot_stones_note" HeaderText="hot_stones_note" 
                SortExpression="hot_stones_note" />
            <asp:BoundField DataField="neue_slideshow_sd_card" HeaderText="neue_slideshow_sd_card" 
                SortExpression="neue_slideshow_sd_card" />
            <asp:BoundField DataField="neue_slideshow_sd_card_note" 
                HeaderText="neue_slideshow_sd_card_note" 
                SortExpression="neue_slideshow_sd_card_note" />
            <asp:BoundField DataField="aufkleber_grohe_spa_logo" HeaderText="aufkleber_grohe_spa_logo" 
                SortExpression="aufkleber_grohe_spa_logo" />
            <asp:BoundField DataField="aufkleber_grohe_spa_logo_note" 
                HeaderText="aufkleber_grohe_spa_logo_note" 
                SortExpression="aufkleber_grohe_spa_logo_note" />
            <asp:BoundField DataField="aufkleber_qr_code" HeaderText="aufkleber_qr_code" 
                SortExpression="aufkleber_qr_code" />
            <asp:BoundField DataField="aufkleber_qr_code_note" 
                HeaderText="aufkleber_qr_code_note" 
                SortExpression="aufkleber_qr_code_note" />
            <asp:BoundField DataField="banner_grandera" 
                HeaderText="banner_grandera" SortExpression="banner_grandera" />
            <asp:BoundField DataField="banner_grandera_note" 
                HeaderText="banner_grandera_note" 
                SortExpression="banner_grandera_note" />
            <asp:BoundField DataField="aufsteller_5_jahre_garantie" 
                HeaderText="aufsteller_5_jahre_garantie" 
                SortExpression="aufsteller_5_jahre_garantie" />
            <asp:BoundField DataField="aufsteller_5_jahre_garantie_note" 
                HeaderText="aufsteller_5_jahre_garantie_note" 
                SortExpression="aufsteller_5_jahre_garantie_note" />
            <asp:BoundField DataField="display_mit_beleuchtung" HeaderText="display_mit_beleuchtung" 
                SortExpression="display_mit_beleuchtung" />
            <asp:BoundField DataField="display_mit_beleuchtung_note" HeaderText="display_mit_beleuchtung_note" 
                SortExpression="display_mit_beleuchtung_note" />
            <asp:BoundField DataField="display_ohne_beleuchtung" HeaderText="display_ohne_beleuchtung" 
                SortExpression="display_ohne_beleuchtung" />
            <asp:BoundField DataField="display_ohne_beleuchtung_note" HeaderText="display_ohne_beleuchtung_note" 
                SortExpression="display_ohne_beleuchtung_note" />
            <asp:BoundField DataField="buerste" HeaderText="buerste" 
                SortExpression="buerste" />
            <asp:BoundField DataField="buerste_note" HeaderText="buerste_note" 
                SortExpression="buerste_note" />
            <asp:BoundField DataField="duschgel" HeaderText="duschgel" 
                SortExpression="duschgel" />
            <asp:BoundField DataField="duschgel_note" 
                HeaderText="duschgel_note" 
                SortExpression="duschgel_note" />
            <asp:BoundField DataField="handtuch" 
                HeaderText="handtuch" SortExpression="handtuch" />
            <asp:BoundField DataField="handtuch_note" 
                HeaderText="handtuch_note" 
                SortExpression="handtuch_note" />
            <asp:BoundField DataField="schwamm" HeaderText="schwamm" 
                SortExpression="schwamm" />
            <asp:BoundField DataField="schwamm_note" HeaderText="schwamm_note" 
                SortExpression="schwamm_note" />
            <asp:BoundField DataField="dig_bilderrahmen" HeaderText="dig_bilderrahmen" 
                SortExpression="dig_bilderrahmen" />
            <asp:BoundField DataField="dig_bilderrahmen_note" 
                HeaderText="dig_bilderrahmen_note" 
                SortExpression="dig_bilderrahmen_note" />
            <asp:BoundField DataField="anzahl_möglicher_banner" HeaderText="anzahl_möglicher_banner" 
                SortExpression="anzahl_möglicher_banner" />
            <asp:BoundField DataField="schaufenster_stromanschluss_vorhanden" 
                HeaderText="schaufenster_stromanschluss_vorhanden" 
                SortExpression="schaufenster_stromanschluss_vorhanden" />
            <asp:BoundField DataField="attraktivitaet_der_fenster" HeaderText="attraktivitaet_der_fenster" 
                SortExpression="attraktivitaet_der_fenster" />
            <asp:BoundField DataField="aktivitaet" 
                HeaderText="aktivitaet" SortExpression="aktivitaet" />
            <asp:BoundField DataField="aktivitaet_bemerkung" HeaderText="aktivitaet_bemerkung" 
                SortExpression="aktivitaet_bemerkung" />
            <asp:BoundField DataField="bemerkung" HeaderText="bemerkung" 
                SortExpression="bemerkung" />
            <asp:BoundField DataField="telefonische_ankuendigung" HeaderText="telefonische_ankuendigung" 
                SortExpression="telefonische_ankuendigung" />
            <asp:BoundField DataField="eingang" HeaderText="eingang" 
                SortExpression="eingang" />
            <asp:BoundField DataField="keine_deko_generell" 
                HeaderText="keine_deko_generell" SortExpression="keine_deko_generell" />
            <asp:BoundField DataField="kuenftige_dekos" HeaderText="kuenftige_dekos" 
                SortExpression="kuenftige_dekos" />
            <asp:BoundField DataField="winterdeko_erhalten" 
                HeaderText="winterdeko_erhalten" SortExpression="winterdeko_erhalten" />
            <asp:BoundField DataField="winterdeko_genutzt" HeaderText="winterdeko_genutzt" 
                SortExpression="winterdeko_genutzt" />
            <asp:BoundField DataField="bewertung_winterdeko" 
                HeaderText="bewertung_winterdeko" SortExpression="bewertung_winterdeko" />
            <asp:BoundField DataField="versand_gewuenscht" HeaderText="versand_gewuenscht" 
                SortExpression="versand_gewuenscht" />
            <asp:BoundField DataField="zweitanfahrt" HeaderText="zweitanfahrt" 
                SortExpression="zweitanfahrt" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:promotion %>" 
        DeleteCommand="DELETE FROM [deko_2014_einsatzbericht_spa] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [deko_2014_einsatzbericht_spa] ([stammdaten_id], [datum], [aufkleber_f_digital], [aufkleber_f_digital_note], [banner_f_digital_deluxe], [banner_f_digital_deluxe_note], [banner_p_s_ncc], [banner_p_s_ncc_note], [wuerfel_made_in_germany], [wuerfel_made_in_germany_note], [hot_stones], [hot_stones_note], [neue_slideshow_sd_card], [neue_slideshow_sd_card_note], [aufkleber_grohe_spa_logo], [aufkleber_grohe_spa_logo_note], [aufkleber_qr_code], [aufkleber_qr_code_note], [banner_grandera], [banner_grandera_note], [aufsteller_5_jahre_garantie], [aufsteller_5_jahre_garantie_note], [display_mit_beleuchtung], [display_mit_beleuchtung_note], [display_ohne_beleuchtung], [display_ohne_beleuchtung_note], [buerste], [buerste_note], [duschgel], [duschgel_note], [handtuch], [handtuch_note], [schwamm], [schwamm_note], [dig_bilderrahmen], [dig_bilderrahmen_note], [anzahl_möglicher_banner], [schaufenster_stromanschluss_vorhanden], [attraktivitaet_der_fenster], [aktivitaet], [aktivitaet_bemerkung], [bemerkung], [telefonische_ankuendigung], [eingang], [keine_deko_generell], [kuenftige_dekos], [winterdeko_erhalten], [winterdeko_genutzt], [bewertung_winterdeko], [versand_gewuenscht], [zweitanfahrt]) VALUES (@stammdaten_id, @datum, @aufkleber_f_digital, @aufkleber_f_digital_note, @banner_f_digital_deluxe, @banner_f_digital_deluxe_note, @banner_p_s_ncc, @banner_p_s_ncc_note, @wuerfel_made_in_germany, @wuerfel_made_in_germany_note, @hot_stones, @hot_stones_note, @neue_slideshow_sd_card, @neue_slideshow_sd_card_note, @aufkleber_grohe_spa_logo, @aufkleber_grohe_spa_logo_note, @aufkleber_qr_code, @aufkleber_qr_code_note, @banner_grandera, @banner_grandera_note, @aufsteller_5_jahre_garantie, @aufsteller_5_jahre_garantie_note, @display_mit_beleuchtung, @display_mit_beleuchtung_note, @display_ohne_beleuchtung, @display_ohne_beleuchtung_note, @buerste, @buerste_note, @duschgel, @duschgel_note, @handtuch, @handtuch_note, @schwamm, @schwamm_note, @dig_bilderrahmen, @dig_bilderrahmen_note, @anzahl_möglicher_banner, @schaufenster_stromanschluss_vorhanden, @attraktivitaet_der_fenster, @aktivitaet, @aktivitaet_bemerkung, @bemerkung, @telefonische_ankuendigung, @eingang, @keine_deko_generell, @kuenftige_dekos, @winterdeko_erhalten, @winterdeko_genutzt, @bewertung_winterdeko, @versand_gewuenscht, @zweitanfahrt)" 
        SelectCommand="SELECT * FROM [deko_2014_einsatzbericht_spa] WHERE ([stammdaten_id] = @stammdaten_id)" 
        UpdateCommand="UPDATE [deko_2014_einsatzbericht_spa] SET [stammdaten_id] = @stammdaten_id, [datum] = @datum, [aufkleber_f_digital] = @aufkleber_f_digital, [aufkleber_f_digital_note] = @aufkleber_f_digital_note, [banner_f_digital_deluxe] = @banner_f_digital_deluxe, [banner_f_digital_deluxe_note] = @banner_f_digital_deluxe_note, [banner_p_s_ncc] = @banner_p_s_ncc, [banner_p_s_ncc_note] = @banner_p_s_ncc_note, [wuerfel_made_in_germany] = @wuerfel_made_in_germany, [wuerfel_made_in_germany_note] = @wuerfel_made_in_germany_note, [hot_stones] = @hot_stones, [hot_stones_note] = @hot_stones_note, [neue_slideshow_sd_card] = @neue_slideshow_sd_card, [neue_slideshow_sd_card_note] = @neue_slideshow_sd_card_note, [aufkleber_grohe_spa_logo] = @aufkleber_grohe_spa_logo, [aufkleber_grohe_spa_logo_note] = @aufkleber_grohe_spa_logo_note, [aufkleber_qr_code] = @aufkleber_qr_code, [aufkleber_qr_code_note] = @aufkleber_qr_code_note, [banner_grandera] = @banner_grandera, [banner_grandera_note] = @banner_grandera_note, [aufsteller_5_jahre_garantie] = @aufsteller_5_jahre_garantie, [aufsteller_5_jahre_garantie_note] = @aufsteller_5_jahre_garantie_note, [display_mit_beleuchtung] = @display_mit_beleuchtung, [display_mit_beleuchtung_note] = @display_mit_beleuchtung_note, [display_ohne_beleuchtung] = @display_ohne_beleuchtung, [display_ohne_beleuchtung_note] = @display_ohne_beleuchtung_note, [buerste] = @buerste, [buerste_note] = @buerste_note, [duschgel] = @duschgel, [duschgel_note] = @duschgel_note, [handtuch] = @handtuch, [handtuch_note] = @handtuch_note, [schwamm] = @schwamm, [schwamm_note] = @schwamm_note, [dig_bilderrahmen] = @dig_bilderrahmen, [dig_bilderrahmen_note] = @dig_bilderrahmen_note, [anzahl_möglicher_banner] = @anzahl_möglicher_banner, [schaufenster_stromanschluss_vorhanden] = @schaufenster_stromanschluss_vorhanden, [attraktivitaet_der_fenster] = @attraktivitaet_der_fenster, [aktivitaet] = @aktivitaet, [aktivitaet_bemerkung] = @aktivitaet_bemerkung, [bemerkung] = @bemerkung, [telefonische_ankuendigung] = @telefonische_ankuendigung, [eingang] = @eingang, [keine_deko_generell] = @keine_deko_generell, [kuenftige_dekos] = @kuenftige_dekos, [winterdeko_erhalten] = @winterdeko_erhalten, [winterdeko_genutzt] = @winterdeko_genutzt, [bewertung_winterdeko] = @bewertung_winterdeko, [versand_gewuenscht] = @versand_gewuenscht, [zweitanfahrt] = @zweitanfahrt WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_f_digital" Type="Int32" />
            <asp:Parameter Name="aufkleber_f_digital_note" Type="Int32" />
            <asp:Parameter Name="banner_f_digital_deluxe" Type="Int32" />
            <asp:Parameter Name="banner_f_digital_deluxe_note" Type="Int32" />
            <asp:Parameter Name="banner_p_s_ncc" Type="Int32" />
            <asp:Parameter Name="banner_p_s_ncc_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany_note" Type="Int32" />
            <asp:Parameter Name="hot_stones" Type="Int32" />
            <asp:Parameter Name="hot_stones_note" Type="Int32" />
            <asp:Parameter Name="neue_slideshow_sd_card" Type="Int32" />
            <asp:Parameter Name="neue_slideshow_sd_card_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_spa_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_spa_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code_note" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="banner_grandera_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="buerste" Type="Int32" />
            <asp:Parameter Name="buerste_note" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="duschgel_note" Type="Int32" />
            <asp:Parameter Name="handtuch" Type="Int32" />
            <asp:Parameter Name="handtuch_note" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="schwamm_note" Type="Int32" />
            <asp:Parameter Name="dig_bilderrahmen" Type="Int32" />
            <asp:Parameter Name="dig_bilderrahmen_note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="winterdeko_erhalten" Type="String" />
            <asp:Parameter Name="winterdeko_genutzt" Type="String" />
            <asp:Parameter Name="bewertung_winterdeko" Type="Int32" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="stammdaten_id" 
                QueryStringField="id" Type="Int32" />
        </SelectParameters>        
        <UpdateParameters>
            <asp:Parameter Name="stammdaten_id" Type="Int32" />
            <asp:Parameter Name="datum" Type="String" />
            <asp:Parameter Name="aufkleber_f_digital" Type="Int32" />
            <asp:Parameter Name="aufkleber_f_digital_note" Type="Int32" />
            <asp:Parameter Name="banner_f_digital_deluxe" Type="Int32" />
            <asp:Parameter Name="banner_f_digital_deluxe_note" Type="Int32" />
            <asp:Parameter Name="banner_p_s_ncc" Type="Int32" />
            <asp:Parameter Name="banner_p_s_ncc_note" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany" Type="Int32" />
            <asp:Parameter Name="wuerfel_made_in_germany_note" Type="Int32" />
            <asp:Parameter Name="hot_stones" Type="Int32" />
            <asp:Parameter Name="hot_stones_note" Type="Int32" />
            <asp:Parameter Name="neue_slideshow_sd_card" Type="Int32" />
            <asp:Parameter Name="neue_slideshow_sd_card_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_spa_logo" Type="Int32" />
            <asp:Parameter Name="aufkleber_grohe_spa_logo_note" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code" Type="Int32" />
            <asp:Parameter Name="aufkleber_qr_code_note" Type="Int32" />
            <asp:Parameter Name="banner_grandera" Type="Int32" />
            <asp:Parameter Name="banner_grandera_note" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie" Type="Int32" />
            <asp:Parameter Name="aufsteller_5_jahre_garantie_note" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_mit_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung" Type="Int32" />
            <asp:Parameter Name="display_ohne_beleuchtung_note" Type="Int32" />
            <asp:Parameter Name="buerste" Type="Int32" />
            <asp:Parameter Name="buerste_note" Type="Int32" />
            <asp:Parameter Name="duschgel" Type="Int32" />
            <asp:Parameter Name="duschgel_note" Type="Int32" />
            <asp:Parameter Name="handtuch" Type="Int32" />
            <asp:Parameter Name="handtuch_note" Type="Int32" />
            <asp:Parameter Name="schwamm" Type="Int32" />
            <asp:Parameter Name="schwamm_note" Type="Int32" />
            <asp:Parameter Name="dig_bilderrahmen" Type="Int32" />
            <asp:Parameter Name="dig_bilderrahmen_note" Type="Int32" />
            <asp:Parameter Name="anzahl_möglicher_banner" Type="Int32" />
            <asp:Parameter Name="schaufenster_stromanschluss_vorhanden" Type="String" />
            <asp:Parameter Name="attraktivitaet_der_fenster" Type="String" />
            <asp:Parameter Name="aktivitaet" Type="String" />
            <asp:Parameter Name="aktivitaet_bemerkung" Type="String" />
            <asp:Parameter Name="bemerkung" Type="String" />
            <asp:Parameter Name="telefonische_ankuendigung" Type="String" />
            <asp:Parameter Name="eingang" Type="String" />
            <asp:Parameter Name="keine_deko_generell" Type="String" />
            <asp:Parameter Name="kuenftige_dekos" Type="String" />
            <asp:Parameter Name="winterdeko_erhalten" Type="String" />
            <asp:Parameter Name="winterdeko_genutzt" Type="String" />
            <asp:Parameter Name="bewertung_winterdeko" Type="Int32" />
            <asp:Parameter Name="versand_gewuenscht" Type="String" />
            <asp:Parameter Name="zweitanfahrt" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

