﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" 
    Inherits="ASPxDashboard_UnderlyingData.WebForm1" %>

<%@ Register Assembly="DevExpress.Dashboard.v16.2.Web, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div id="myPopup"></div>
    <div style="position:absolute; left:0; right:0; top:0; bottom:0;">               
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" 
            WorkingMode="Viewer"           
            Height="100%" Width="100%">
            <ClientSideEvents 
                   ItemClick="function(s, e) { getUnderlyingData(e); }"
                   Init="function(s, e) { initPopup(); }" />
        </dx:ASPxDashboard>
    </div>
    </form>
    <script type="text/javascript" src="<%=Page.ResolveClientUrl("~/Scripts/UnderlyingData.js")%>"></script>
</body>
</html>