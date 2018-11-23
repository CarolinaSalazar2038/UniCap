<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionConsulta.aspx.vb" Inherits="SeccionConsulta" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consultas</title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Fiscalía General del estado de sinaloa</h1>
            </div>
            <div class="loginDisplay">
                <br />
                <br />
            </div>
            <div class="clear hideSkiplink">
            <%--Esta Seccion del codigo especifica el menu de navegacion en donde el usuario se desplazara--%>
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/SeccionConsultaEventosDetalles.aspx" Text="Eventos" 
                            Value="Eventos">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/SeccionConsultaHistorial.aspx" Text="Historial Personal" 
                            Value="Historial Personal"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Overline="False" 
                Font-Size="XX-Large" Font-Underline="False" ForeColor="Black" 
                style="z-index: 1; left: 720px; top: 54px; position: absolute" 
                Text="Consultas" Theme="Office2010Black">
            </dx:ASPxLabel>
            <%--Imagen del logo de Fiscalía General del Estado de Sinaloa--%>
            <dx:ASPxImage ID="ASPxImage1" runat="server" ImageUrl="~/Logo Fiscalía General.jpg" 
                ShowLoadingImage="true" 
                
                
                
                
                style="z-index: 1; left: 624px; top: 121px; position: absolute; height: 245px; width: 398px">
            </dx:ASPxImage>
        </div>
    </div>
    <div class="footer">
        
    </div>

    </div>
    </form>
</body>
</html>
