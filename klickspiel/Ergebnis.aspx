<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Ergebnis.aspx.vb" Inherits="Ergebnis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ŠKODA Clever-Klick</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body style="background-image:url('img/Screendesign_Gitterraetsel_5.jpg'); background-repeat:no-repeat; ">
    <form id="form1" runat="server">
    <div style="position:absolute; margin:180px 0px 25px 100px; width:450px; border: 0px solid green; font-family:Arial; font-size:62px; font-weight:bold; color:#ffffff;">
        <asp:Label ID="meldung" runat="server" Text="HERZLICHEN GLÜCKWUNSCH!"></asp:Label>
    </div>
    <div style="margin:940px 30px 0px 970px; padding: 0px 30px 0px 0px; border: 0px solid red; position:absolute; width:600px; height:100px;font-family:Arial; font-size:62px; font-weight:bold; color:#ffffff;">
            <a onclick="window.location='Spiel.aspx'" style="border:0; cursor:pointer; text-decoration:none; color:#ffffff;">> ERNEUT SPIELEN</a>
        </div> 
        <div style="position:absolute; margin:540px 0px 25px 100px; width:560px; border: 0px solid green; font-family:Arial; font-size:48px; font-weight:bold; color:#ffffff;">
        <asp:Label ID="textteil" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
