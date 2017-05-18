<%@ Page Language="VB" AutoEventWireup="false" Debug="true" CodeFile="VotingErgebnis.aspx.vb" Inherits="VotingErgebnis" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" type="image/x-icon" href="img/fav.ico" />
<link rel="stylesheet" href="css/styles.css" type="text/css" />


<link href='http://fonts.googleapis.com/css?family=Cabin' rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="css/scroll.css" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

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
<form id="form2" runat="server">
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
<!--<a href="http://www.facebook.com/sharer.php?u=http://www.fotovoting.dewhoch21.de/VotingErgebnis.aspx" target="_blank">f Share</a>-->

<p class="spiel_inhalt">

    <asp:Panel ID="panelVoteBild" runat="server" Visible="False">

    <h1>Sie haben für dieses Bild gevotet:</h1>
    
    <div style="margin-left:70px; margin-top: 20px;">
    
    <table border="0" cellpadding="2" cellspacing="0" style="margin: 0px 0px 0px 0px;" class="anmeldeformular">
        
        <tr>
            <td>
                <asp:GridView ID="GridViewIhrBild" runat="server" AutoGenerateColumns="False" CssClass="basix" cellpadding="0" GridLines="None">
                <columns>
                    <asp:TemplateField Headertext="IhrBild"></asp:TemplateField>
                    <asp:TemplateField HeaderText="ProzentBalken" />
                    <asp:TemplateField HeaderText="ProzentZahl" />
                </columns>
                </asp:GridView> 
            </td>
        </tr>
        
    </table>
   
    </div>

     
      
      <p class="linie_inhalt"><img alt="" src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>   
    </asp:Panel> 
      <h1>GESAMTÜBERSICHT</h1> 
      
      <p class="linie_inhalt"><img alt="" src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>
      
      <div style="margin-left:70px;">
      
      
      
       <table border="0" cellpadding="2" cellspacing="0" style="margin: 0px 0px 0px 0px;" class="anmeldeformular">
        
    <tr>
        <td>
            <asp:GridView ID="GridViewVoting" runat="server" AutoGenerateColumns="False" cellpadding="0" cellspacing="0" GridLines="None">
                <columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="bildname" HeaderText="Bildname" />
                    <asp:BoundField DataField="vorname" HeaderText="First Name" />
                    <asp:BoundField DataField="nachname" HeaderText="Last Name" />
                    <asp:BoundField DataField="voting" HeaderText="Voting" />
                    <asp:TemplateField HeaderText="Platz" />
                    <asp:TemplateField Headertext="BildSicht" />
                    <asp:TemplateField HeaderText="ProzentBalken" />
                    <asp:TemplateField HeaderText="ProzentZahl" />
                </columns>
            </asp:GridView> 
            <asp:label ID="lblStatus" runat="server"></asp:label>
        </td>
    </tr>
    </table>

    </div>
    
    
    
</p>
<div id="ZITATE-SPIEL" style="margin:0px; padding:0; height: 0px"></div>
<p class="linie_inhalt"><img alt="" src="img/linie.jpg" border="0" style="width: 813px; height: 2px;" /></p>

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
