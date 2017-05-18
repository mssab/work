<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Spiel.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ŠKODA Clever-Klick</title>
    <style type="text/css">
td.markiert
{
   
   background:#ffffff;
   color:#0063A7;
   /* Gecko-based, Mozilla */
-moz-user-select:none;
/* Safari */
-khtml-user-select: none;
}
td.geloest
{
   background: #CBD401; /* Farbe, die eine gelöste Zelle hervorhebt */
   /* Gecko-based, Mozilla */
-moz-user-select:none;
/* Safari */
-khtml-user-select: none;
}
td.fertig
{
   text-decoration:line-through;
   display:none;
   /* Gecko-based, Mozilla */
-moz-user-select:none;
/* Safari */
-khtml-user-select: none;
}
td.frei
{
    background:#0063A7;
   color:#FFFFFF;
   /* Gecko-based, Mozilla */
-moz-user-select:none;
/* Safari */
-khtml-user-select: none;
    }
</style>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
    function beginn(){
        document.getElementById('Stopp').style.display = 'none';
        document.getElementById('Start').style.display = 'block';
        document.getElementById('Aufloesen').style.display = 'none';
        document.getElementById('Weiter').style.display = 'none';
        document.getElementById('Spieler1_Plus').style.display = 'none';
        document.getElementById('Spieler2_Plus').style.display = 'none';
        
    }
    
    function loesen() {
        
        window.setTimeout(fadeOut('Splitter1'),1000);
        window.setTimeout(fadeOut('Splitter2'), 1000);
        window.setTimeout(fadeOut('Splitter3'), 1000);
        window.setTimeout(fadeOut('Splitter4'), 1000);
        window.setTimeout(fadeOut('Splitter5'), 1000);
        window.setTimeout(fadeOut('Splitter6'), 1000);
        window.setTimeout(fadeOut('Splitter7'), 1000);
        window.setTimeout(fadeOut('Splitter8'), 1000);
        window.setTimeout(fadeOut('Splitter9'), 1000);
        window.setTimeout(fadeOut('Splitter10'), 1000);
        window.setTimeout(fadeOut('Splitter11'), 1000);
        window.setTimeout(fadeOut('Splitter12'), 1000);
        window.setTimeout(fadeOut('Splitter13'), 1000);
        document.getElementById('Stopp').style.display = 'none';
        document.getElementById('Start').style.display = 'none';
        document.getElementById('Aufloesen').style.display = 'none';
        document.getElementById('Weiter').style.display = 'none';
        document.getElementById('Spieler1_Plus').style.display = 'block';
        document.getElementById('Spieler2_Plus').style.display = 'block';
        loesung();
    }

    function loesung() {

        document.getElementById('loesungsbild').style.display = 'block';
        document.getElementById('suchbild').style.display = 'none';
    }

    function starter() {
        qstart();
        document.getElementById('Stopp').style.display = 'block';
        document.getElementById('Start').style.display = 'none';
        document.getElementById('Aufloesen').style.display = 'none';
        document.getElementById('Weiter').style.display = 'none';
        document.getElementById('suchbild').style.display = 'block';
        document.getElementById('loesungsbild').style.display = 'none';
        
    }

    
    function stopper() {
        stopp();
        document.getElementById('Stopp').style.display = 'none';
        document.getElementById('Start').style.display = 'none';
        document.getElementById('Aufloesen').style.display = 'block';
        document.getElementById('Weiter').style.display = 'none';
    }

    function keiner() {
        stopp();
        document.getElementById('Stopp').style.display = 'none';
        document.getElementById('Start').style.display = 'none';
        document.getElementById('Aufloesen').style.display = 'none';
        document.getElementById('Weiter').style.display = 'block';
    }

    function weiter() {
        var P1 = document.getElementById('Spieler1_Punkte').innerHTML;
        var P2 = document.getElementById('Spieler2_Punkte').innerHTML;
        var SP1 = document.getElementById('Spieler1_Name').innerHTML;
        var SP2 = document.getElementById('Spieler2_Name').innerHTML;
        var runde = document.getElementById('runde').innerHTML;
        document.location = "http://www.klick.gate-internet.de/neu/Spiel.aspx?SP1=" + SP1 + '&SP2=' + SP2 + '&P1=' + P1 + '&P2=' + P2 + '&runde=' + runde;
    }

    function plus1() {
        var P1 = parseInt(document.getElementById('Spieler1_Punkte').innerHTML);
        var P2 = parseInt(document.getElementById('Spieler2_Punkte').innerHTML);
        var points = parseInt(document.getElementById('punkte').innerHTML);
        var SP1 = document.getElementById('Spieler1_Name').innerHTML;
        var SP2 = document.getElementById('Spieler2_Name').innerHTML;
        P1 = P1 + points;
        document.getElementById('Spieler1_Punkte').innerHTML = P1;
        test();
        var runde = document.getElementById('runde').innerHTML;
        document.location = "http://www.klick.gate-internet.de/neu/Spiel.aspx?SP1=" + SP1 + '&SP2=' + SP2 + '&P1=' + P1 + '&P2=' + P2 + '&runde=' + runde;
    }

    function plus2() {
        var P1 = parseInt(document.getElementById('Spieler1_Punkte').innerHTML);
        var P2 = parseInt(document.getElementById('Spieler2_Punkte').innerHTML);
        var points = parseInt(document.getElementById('punkte').innerHTML);
        var SP1 = document.getElementById('Spieler1_Name').innerHTML;
        var SP2 = document.getElementById('Spieler2_Name').innerHTML;
        P2 = P2 + points;
        document.getElementById('Spieler2_Punkte').innerHTML = P2;
        test();
        var runde = document.getElementById('runde').innerHTML;
        document.location = "http://www.klick.gate-internet.de/neu/Spiel.aspx?SP1=" + SP1 + '&SP2=' + SP2 + '&P1=' + P1 + '&P2=' + P2 + '&runde=' + runde;
    }

    function test() {
//        var P1 = parseInt(document.getElementById('Spieler1_Punkte').innerHTML);
//        var P2 = parseInt(document.getElementById('Spieler2_Punkte').innerHTML);
//        var SP1 = document.getElementById('Spieler1_Name').innerHTML;
//        var SP2 = document.getElementById('Spieler2_Name').innerHTML;
//        if (P1 > 15) {
//            document.location = "http://www.klick.gate-internet.de/neu/Ergebnis.aspx?Gewinner=" + SP1;
//        }
//        if (P2 > 15) {
//            document.location = "http://www.klick.gate-internet.de/Ergebnis.aspx?Gewinner=" + SP2;
//        }
//        var runde = document.getElementById('runde').innerHTML;
//        if (runde == "5") {
//            if (P1 < P2) {
//                document.location = "http://www.klick.gate-internet.de/Ergebnis.aspx?Gewinner=" + SP2;
//            }
//            if (P1 > P2) {
//                document.location = "http://www.klick.gate-internet.de/Ergebnis.aspx?Gewinner=" + SP1;
//            }
//            if (P1 == P2) {
//                document.location = "http://www.klick.gate-internet.de/Ergebnis.aspx?Gewinner=kein_gewinner" ;
//            }
//        }
        
    }

    function kleiner() { 
        var points = parseInt(document.getElementById('punkte').innerHTML);
        document.getElementById('punkte').innerHTML = points - 1;
    }

    function fadeOut(elementToFade) {
        var element = document.getElementById(elementToFade);

        element.style.opacity -= 0.1;
        if (element.style.opacity < 0.0) {
            element.style.opacity = 0.0;
        } else {
            setTimeout("fadeOut(\"" + elementToFade + "\")", 100);
        }
    }

    
    
</script>

</head>
<body style="background-image:url('img/Screendesign_Gitterraetsel_3.jpg'); background-repeat:no-repeat; " onload="javascript:beginn();">
    <form id="form1" runat="server">
    
    
       
       <asp:Panel id="bild" runat="server" style="background-repeat:no-repeat; position:absolute; margin: 215px 0px 25px 65px; width:1200px; height:720px; border: 0px solid green;">
            <asp:Image id="loesungsbild" runat="server" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; display:none;" border="0" />
            <asp:Image id="suchbild" runat="server" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px; display:none;" border="0" />
            <asp:Image id="Splitter1" runat="server" src="Bilder_Klick/1.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter2" runat="server" src="Bilder_Klick/2.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter3" runat="server" src="Bilder_Klick/3.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter4" runat="server" src="Bilder_Klick/4.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter5" runat="server" src="Bilder_Klick/5.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter6" runat="server" src="Bilder_Klick/6.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter7" runat="server" src="Bilder_Klick/7.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter8" runat="server" src="Bilder_Klick/8.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter9" runat="server" src="Bilder_Klick/9.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter10" runat="server" src="Bilder_Klick/10.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter11" runat="server" src="Bilder_Klick/11.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter12" runat="server" src="Bilder_Klick/12.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
            <asp:Image id="Splitter13" runat="server" src="Bilder_Klick/13.png" alt="" style="position:absolute; margin: 0px 0px 0px 0px; padding: 0px 0px 0px 0px;" border="0" />
        </asp:Panel>
        
            <div style="margin:240px 30px 0px 1450px; padding: 0px 30px 0px 0px; border: 0px solid red; position:absolute;">
            <table cellspacing="10" style="color:#ffffff; font-family:Arial; font-size:36px; font-weight:bold;"  >
                <tr>
                    <td colspan="2">Runde: <asp:Label ID="runde" runat="server">1</asp:Label> von 5</td>
                </tr>
                <tr>
                    <td><b>Zeit:</b></td>
                
                <td>
                <script language="javascript" type="text/javascript">
                    var t1;
                    var id = "";
                    function countdown1(name, time) {
                        org_time = time;
                        if (org_time != 0) {
                            var tage = Math.floor(time / 60 / 60 / 24);
                            var time = time - tage * 60 * 60 * 24;
                            var stunden = Math.floor(time / 60 / 60);
                            var time = time - stunden * 60 * 60;
                            var minuten = Math.floor(time / 60);
                            var sekunden = time - minuten * 60;
                            if (minuten < 10)
                                min0 = "0"
                            else
                                min0 = "";
                            if (sekunden < 10)
                                sek0 = "0"
                            else
                                sek0 = "";
                            if (tage > 0)
                                var ausgabe = tage + "d " + stunden + ":" + min0 + minuten + ":" + sek0 + sekunden;
                            if (tage == 0)
                                var ausgabe = min0 + minuten + ":" + sek0 + sekunden;
                            id = window.setTimeout("countdown1('" + name + "'," + (org_time - 1) + ")", 1000);
                        } else {
                            var ausgabe = '0:00:00';
                            keiner();
                            var endzeit = '0:00:00';
//                            document.location = "http://www.gitterraetsel.gate-internet.de/Ergebnis.aspx?gp=" + endergebnis + '&zeit=' + endzeit;
                        }
                        if (org_time == 36) {
                            window.fadeOut('Splitter12');
                            kleiner();
                        }
                        if (org_time == 33) {
                            window.fadeOut('Splitter1');
                            kleiner();
                        }
                        if (org_time == 30) {
                            window.fadeOut('Splitter3');
                            kleiner();
                        }
                        if (org_time == 27) {
                            window.fadeOut('Splitter9');
                            kleiner();
                        }
                        if (org_time == 24) {
                            window.fadeOut('Splitter8');                           
                            kleiner();
                        }
                        if (org_time == 21) {
                            window.fadeOut('Splitter4');
                            kleiner();
                        }
                        if (org_time == 18) {
                            window.fadeOut('Splitter2');
                            kleiner();
                        }
                        if (org_time == 15) {
                            window.fadeOut('Splitter11');
                            kleiner();
                        }
                        if (org_time == 12) {
                            window.fadeOut('Splitter10');
                            kleiner();
                        }
                        if (org_time == 9) {
                            window.fadeOut('Splitter6');
                            window.fadeOut('Splitter7');
                            kleiner();
                        }
                        if (org_time == 6) {
                            window.fadeOut('Splitter13');
                            kleiner();
                        }
                        if (org_time == 3) {
                            window.fadeOut('Splitter5');
                            kleiner();
                        }
                        if (org_time == 0) {
                            
                            loesung();
                        }
                        document.getElementById(name).innerHTML = ausgabe;
                    }
                    function countdown2(name) {
                        var eventDate = new Date("December 24, 2006 00:00:00 GMT");
                        d = new Date();
                        count = Math.floor((eventDate.getTime() - d.getTime()) / 1000);
                        count = Math.floor(count / (60 * 60 * 24)); document.getElementById(name).innerHTML = count;
                    }
                    function stopp() {
                        clearTimeout(id);
                        id = "";
                    }
                    function qstart() {
                        countdown1('countdown1', '36');
                    }
</script>
                    <strong><span id="countdown1"><%--<script type="text/javascript">countdown1("countdown1", "60");</script>--%></span></strong>
                </td>
                </tr>
                
                <tr>
                    <td colspan="2">Punkte: <asp:Label ID="punkte" runat="server"></asp:Label></td>
                </tr>
                
                </table>
                </div>
                <div style="margin:480px 30px 0px 1430px; padding: 0px 30px 0px 0px; border: 0px solid red; position:absolute; width:480px">
                <table cellspacing="10" style="color:#000000; font-family:Arial; font-size:36px; font-weight:bold; width:100%;"">
                
                
               
               
                <tr>
                    <td style="width:50%; text-align:center;"><asp:Label ID="Spieler1_Name" runat="server" Text="Spieler 1" ForeColor="Black"></asp:Label></td>
                    <td style="width:50%; text-align:center;"><asp:Label ID="Spieler2_Name" ForeColor="Black" runat="server" Text="Spieler 2"></asp:Label></td>
                </tr>
                <tr>
                    <td style="text-align:center;"><asp:Label ID="Spieler1_Punkte" runat="server" Text="0" ForeColor="Black"></asp:Label></td>
                
                    <td style="text-align:center;"><asp:Label ID="Spieler2_Punkte" runat="server" Text="0" ForeColor="Black"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        
                        
                    </td>
                </tr>
                
            </table>
        </div>
        <div style="margin:990px 30px 0px 1620px; padding: 0px 30px 0px 0px; border: 0px solid red; position:absolute; width:270px; height:100px;">
            <table>
                <tr>
                    <td style="width:175px; text-align:center;">
                        <asp:Image ID="Start" ImageUrl="~/img/Start.png" runat="server" />
                        <asp:Image ID="Stopp" ImageUrl="~/img/Stop.png" runat="server" />
                        <asp:Image ID="Aufloesen" ImageUrl="~/img/Aufloesen.png" runat="server" />
                        <asp:Image ID="Weiter" ImageUrl="~/img/Weiter.png" runat="server" />
                        <asp:Image ID="Spieler1_Plus" ImageUrl="~/img/Punkt_1.png" ImageAlign="NotSet"  runat="server" />
                        
                   </td>
                   <td style="width:125px; text-align:center;">
                        <asp:Image ID="Spieler2_Plus" ImageUrl="~/img/Punkt_2.png" ImageAlign="NotSet" runat="server" />
                   </td>
                </tr>
                <%--<tr>
                    <td style="width:100px;"><a onclick="window.location='Spiel.aspx'" style="border:0; cursor:pointer;"><img src="img/Screendesign_Gitterraetsel_btn_erneut_spielen.png" alt="" /></a></td>
                    <td style="width:100px;"><a onclick="window.location='Default.aspx'" style="border:0; cursor:pointer;"><img src="img/Screendesign_Gitterraetsel_btn_abbrechen.png" alt="" /></a></td>
                </tr>--%>
            </table>
        </div> 
    
    </form>
</body>
</html>
