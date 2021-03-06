﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
  <title>Grohe Promotionplaner - Ein Service der gate communication group GmbH</title>
  		
  <link href="css/styles.css" rel="stylesheet" type="text/css" media="all" />
  <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
  
  <script type="text/javascript" src="js/mootools.js"></script>
  <script type="text/javascript" src="js/slideshow.js"></script>
  
  <script type="text/javascript">
      window.onload = function ()
      { myShow = new Slideshow('Bild1', { hu: 'images/', images: ['header_start.jpg', 'header_start_2.jpg', 'header_start_3.jpg'] }) }
  </script>	
</head>
<body>
    <form id="form1" runat="server">
     <div id="background_container" class="shadow">
    
  <div id="content">
  
   <div id="top">   
   <div style="float:left;font-family: arial; margin: 18px 0px 0px 7px">
    <div style="font-size: 36px; text-transform: uppercase; color: #646464;">Projekt-Portal</div>
    <div style="font-size: 16px; color: #646464; margin-top:15px; margin-left:2px">Ein Service der gate communication group GmbH</div>
   </div>
    <img src="images/logo_grohe.jpg" alt="logo grohe" border="0" style="float:right;" />
   </div>
   
   <div id="navigation">
   <ul class="nav">
   </ul>
   </div>
   
   <div id="header">
     <div id="Bild1"><img src="images/header_start.jpg" alt="" /></div> 
   </div>  
   
   <div id="content_big" style="width:1380px;">
   
   <span class="headline">Login</span>
   
     <p class="absatz">Bitte geben Sie Ihre Zugangsdaten ein, um sich im Service anzumelden.</p>

   <table style="width:750px">
    <tr>
        <td>Benutzer:</td>
        <td><asp:TextBox ID="benutzer" runat="server" CssClass="textbox"></asp:TextBox></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Passwort</td>
        <td><asp:TextBox ID="passwort" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox></td>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text="Login" /></td>
    </tr>
    <tr>
        <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4"><asp:Label ID="fehler" runat="server" Text="Ihre Logindaten stimmen nicht!" Visible="false"></asp:Label></td>
    </tr>
   </table>

   
   </div>
   
   <%--<div id="content_small"> 
     
    <div id="feature_1">
    
    <span class="headline">Lorem ipsum dolor</span>
    
    <p class="feature">Lorem ipsum dolor sit amet, consetetur sadipscing elitr.</p>
    
    <p class="feature"><img src="images/grohe_spa_feature.jpg" alt="feature spa" border="0" class="imgshadow" /></p>
    
    <p class="feature_trennlinie"><img src="images/trennlinie_feature.jpg" alt="trennlinie feature" border="0" /></p>      
     
    </div>
    
    <div id="feature_2">
    
    <span class="headline">Lorem ipsum dolor</span>
    
    <p class="feature">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
    
    <p class="feature_trennlinie"><img src="images/trennlinie_feature.jpg" alt="trennlinie feature" border="0" /></p>    
     
    </div>
    
    <div id="feature_3">
    
    <span class="headline">Lorem ipsum dolor</span>
    
    <p class="feature">Lorem ipsum dolor sit amet, consetetur sadipscing elitr.</p>
    
    <p class="feature"><img src="images/grohe_schaufenster_feature.jpg" alt="feature schaufenster" border="0" class="imgshadow" /></p>
    
    <p class="feature_trennlinie"><img src="images/trennlinie_feature.jpg" alt="trennlinie feature" border="0" /></p>      
     
    </div>
    
   </div>--%>
   
   <div style="clear:both;"></div>
  
  </div>
   
 </div>
 
 <div id="footer" class="shadow">
  <div id="footer_content">
  
  <div style="float:left; width: 230px;">
  <span class="headline_footer">Kontakt / Impressum</span>
  
  <p class="absatz">
  <strong>gate communication group GmbH</strong><br />
  Tronjestraße 13<br />
  44319 Dortmund</p>

  <p class="absatz">
  Telefon: 0231.927170-0<br />
  Telefax: 0231.927170-70<br />
  eMail: info@gate.de<br />
  Internet: www.gate.de</p>

  <p class="absatz" style="margin-bottom:7px;">
  Geschäftsführer: Jens Römer<br />
  HRB 7778 Dortmund<br />
  UST-ID Nr. DE 124 731 239</p>
  </div>
  
  
  <div style="float:left; width: 535px;">
  <span class="headline_footer">Disclaimer:</span>
  
  <p class="absatz">
  Alle Rechte liegen bei der gate communication group GmbH. Diese Internet-Seiten dienen der allgemeinen Information über die gate communication group GmbH. Wir bemühen uns, genaue und aktuelle Informationen zur Verfügung zu stellen. Wir übernehmen jedoch keine Garantie (weder ausdrücklich noch stillschweigend) für die Richtigkeit und Vollständigkeit der Informationen sowie keine Haftung für jegliche Art von Schäden, die sich aus dem Gebrauch der hier veröffentlichten Informationen ergeben. Wir behalten uns vor, den Inhalt dieser Internet-Seiten ohne vorherige Ankündigung zu ändern. Eine Haftung ergibt sich daraus nicht.
  </p>
  
  <span class="headline_footer">Haftungsausschluss für externe Links:</span>
  <p class="absatz" style="margin-bottom:7px;">
  Trotzt sorgfältiger Prüfung kann die gate communication group GmbH keine Verantwortung für die Inhalte der externen verlinkten Seiten übernehmen, da diese sich nach der Linksetzung verändern können. Sollten Sie einen Link bemerken, der entweder nicht mehr funktioniert oder aber auf thematisch unpassende Inhalte verweist, schicken Sie uns bitte eine E-Mail.
  </p>
  </div>
  
  <div style="clear:both;"></div>
  </div>
 </div>
    </form>
</body>
</html>
