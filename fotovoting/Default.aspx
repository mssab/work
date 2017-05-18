<%@ Page Language="VB" AutoEventWireup="false" Debug="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" type="image/x-icon" href="img/fav.ico" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />


<link href='http://fonts.googleapis.com/css?family=Cabin' rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="css/scroll.css" type="text/css" />
<script type="text/css" src="js/jquery.js"></script>

<script type="text/javascript">
    $(function () {
        $('a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {

                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
</script>



<link type="text/css" rel="stylesheet" href="css/rhinoslider-1.05.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/rhinoslider-1.05.min.js"></script>
<script type="text/javascript" src="js/mousewheel.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#slider').rhinoslider({
            controlsMousewheel: false,
            controlsKeyboard: false,
            controlsPrevNext: false,
            controlsPlayPause: false,
            autoPlay: true,
            pauseOnHover: false,
            showBullets: 'never',
            showControls: 'never',
            slidePrevDirection: 'toRight',
            slideNextDirection: 'toLeft',
            showTime: 7000
        });
    });
</script>

<script type="text/javascript">
    function popup(url) {
        fenster = window.open(url, "Popupfenster", "width=730,height=600,scrollbars=yes,resizable=yes");
        fenster.focus();
        return false;
    }
</script>





<title>DEWHoch21</title>

</head>

<body>
<form id="form1" runat="server">
<div id="top" style="margin:0px; padding:0; height: 0px"></div>
<div id="zentriert_nav">

<div id="navbar">
 <a href="#"><img src="img/logo_dew.jpg" alt="logo" border="0" style="float: left;" /></a>
 
 <ul>
   <li><a href="http://www.dewhoch21.de/">HOME</a></li>
   
 </ul> 

</div>

</div>




<div id="zentriert_erklaerung">

<div id="erklaerung">
 
<div style="background:url(img/banner_spiel1.jpg); background-repeat: no-repeat; height:960px; height: 405px;">

<a href="http://www.dew21.de" target="_blank" style="margin:300px 0px 0px 720px; position:absolute"><img alt="" src="img/link_dew.jpg" border="0" /></a>

</div>

<div class="inhalt_spiele">


<h1>FOTOVOTING</h1>

<p class="linie_inhalt"><img src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>

<p class="spiel_inhalt">

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.



</p>

<p class="spiel_inhalt_folgend">
        
<input type="button" value="Hier geht's zur Voting-Galerie" onClick="self.location.href='BilderAnzeigen.aspx'" style="text-decoration:none; margin-left: 5px" />
        
            
</p>

<p class="linie_inhalt"><img src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>


</div>
 
</div>

</div>





<div id="zentriert_spiel_4">

<div id="spiel_4">
 
<div class="inhalt_spiele">

<h1>ICH MÖCHTE TEILNEHMEN!</h1>

<p class="linie_inhalt"></p>

<p class="spiel_inhalt">


<span style="color:red;">

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        function bildervorschau(dateipfad) {
            if (dateipfad.files && dateipfad.files[0]) {
                var thefileReader = new FileReader();
                thefileReader.onload = function (ergebnis) {
                    $('#imageBildVorschau').attr('src', ergebnis.target.result);
                }
                thefileReader.readAsDataURL(dateipfad.files[0]);
            }
        }
    </script>

        <div id="main">
            
            <asp:Panel ID="eingabebild" runat="server">


                <table border="0" cellpadding="2" cellspacing="0" style="margin: 0px 0px 0px 70px;" class="anmeldeformular">
                    
                    <tr>
                        <td width="130">Anrede:</td>
                        <td width="262"><asp:RadioButton ID="anrede_herr" Groupname="anr" runat="server" />&nbsp;&nbsp;Herr&nbsp;&nbsp;<asp:RadioButton ID="anrede_frau" Groupname="anr" runat="server" />&nbsp;&nbsp;Frau</td>
                        <td  valign="top"><asp:checkBox ID="Teilnahmebedingungen" runat="server" /></td>
                        <td rowspan="2" valign="top">
                        <p id="rechtliches" style="margin-top:0px">Ich akzeptiere die <a href="img/teilnahmebestimmungen.pdf" target="_blank" style="color: #176897;">Teilnahme- und<br />Datenschutzbedingungen</a>!
                        </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Vorname</td>
                        <td><div class="fieldHolder_normal"><asp:TextBox ID="vorname" runat="server" CssClass="textfield_normal"></asp:TextBox>&nbsp;<asp:Label ID="fehler_vorname" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Nachname</td>
                        <td><div class="fieldHolder_normal"><asp:TextBox ID="nachname" CssClass="textfield_normal" runat="server"></asp:TextBox>&nbsp;<asp:Label ID="fehler_nachname" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td valign="top"><asp:checkBox ID="info_ja" Groupname="janein" runat="server" /></td>
                        <td width="370" rowspan="5" valign="top">Ich interessiere mich für Marketingbotschaften, die mir die DEW21 GmbH in unregelmäßigen Abständen per E-Mail und/oder Brief zusendet und mich damit über Aktionen und neue Produkte informiert. Ich kann diese Einwilligung jederzeit ohne Angabe von Gründen gegenüber DEW21 widerrufen. Mir ist bewusst, dass die Einwilligung nicht Voraussetzung für die Teilnahme am Einstein-Fotovoting ist! 
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail Adresse</td>
                        <td><div class="fieldHolder_normal"><asp:TextBox ID="email" runat="server" CssClass="textfield_normal"></asp:TextBox>&nbsp;<asp:Label ID="fehler_email" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="90">Strasse</td>
                        <td width="232"><div class="fieldHolder_normal"><asp:TextBox ID="strasse" runat="server" CssClass="textfield_normal"></asp:TextBox>&nbsp;<asp:Label ID="fehler_strasse" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Postleitzahl</td>
                        <td><div class="fieldHolder_normal"><asp:TextBox ID="plz" runat="server" CssClass="textfield_normal"></asp:TextBox>&nbsp;<asp:Label ID="fehler_plz" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Ort</td>
                        <td><div class="fieldHolder_normal"><asp:TextBox ID="ort" runat="server" CssClass="textfield_normal"></asp:TextBox>&nbsp;<asp:Label ID="fehler_ort" runat="server" ForeColor="RED" Text="*" Visible="false"></asp:Label></div></td>
                        <td></td>
                        <td><asp:Button ID="BestaetigungsButton" runat="server" UseSubmitBehavior="false" Text="Bestätigen und mitspielen!" style="font-family: 'Cabin'; font-size: 18px;" /></td>
                    </tr> 
                </table>

                <br /><br />
                <div style="color: red; margin: 0px 0px 0px 70px"><asp:Label ID="warnung" runat="server" Text="Bitte alle mit * markierten Felder ausfüllen." Visible="false" CssClass="fehler"></asp:Label>
                </div>
                <div style="color: red; margin: 0px 0px 0px 70px">
                <asp:Label ID="warnung_tn_bed" runat="server" Text="Bitte die Teilnahmebedingungen akzeptieren!" Visible="false" CssClass="fehler"></asp:Label>
                </div>
            </asp:Panel>
        
            <asp:Panel ID="meldung" runat="server" Visible="false">
                <div style="color: red; margin: 0px 0px 0px 70px">
                    <asp:Label ID="label_meldung" runat="server" Font-Names="Verdana" ForeColor="Red" Text="Sie sind schon registriert"></asp:Label>
                    <br /><br />
                    <asp:Button ID="ZurueckButton" runat="server" UseSubmitBehavior="false" Text="Zurück zum Anmeldeformular" style="color: #fff;" />
                </div>
            </asp:Panel>
           
        </div>
     
        <div>
       




        
            <asp:Panel ID="ImageUpload" runat="server" Visible="False">
            <p class="linie_inhalt"><img src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>
            
                 <h1>BILDUPLOAD</h1>
               
               <p class="spiel_inhalt_folgend">
                
                
                <asp:FileUpload ID="fileUpload" runat="server" onchange="bildervorschau(this)"/>
                <asp:Label ID="labelmeldungvorher" runat="server" Width="100%"></asp:Label>
                <asp:Image id="imageBildVorschau" alt="" Height="25%" Width="25%" runat="server" />
                <asp:Label ID="hochformatmeldung" runat="server"></asp:Label>
                <br/><br/>
                <asp:Button ID="buttonUpload" UseSubmitBehavior="false" runat="server" Text="ABSENDEN" />
                
            </asp:Panel>
            <asp:Label id="labelUploadStatus" runat="server"></asp:Label>
            </p>
       </div>
       

</span>



        
        
        
		





</p>




</div>
 
</div>

</div>























<div id="zentriert_footer">

<div id="footer">
 
<div class="inhalt_spiele">

<p style="width:817px; border: 0px solid red; margin: 0px 0px 0px 70px;">



<table border="0" cellpadding="0" cellspacing="0" style="width: 817px; margin-left:70px;">
 <tr>
  <td>&copy; Dortmunder Energie- und Wasserversorgung GmbH 2014</td>
  <td align="right"><a href="impressum.aspx" target="_blank" onclick="return popup(this.href);" style="color: #176897;">Impressum</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="img/datenschutz.pdf" target="_blank" style="color:#176897;">Datenschutzerklärung</a></td> 
 </tr>
</table>

</p>



</div>
 
</div>

</div>

</form>

</body>

</html>
