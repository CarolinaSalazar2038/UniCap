<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionReportePersona.aspx.vb" Inherits="SeccionReportePersona" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte Por Persona</title>
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
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/SeccionReportes.aspx" Text="Regresar" 
                            Value="Regresar"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
            <%--Titulo de la Página--%>
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="X-Large" 
                ForeColor="Black" 
                style="z-index: 1; left: 671px; top: 39px; position: absolute; width: 193px;" 
                Text="Reporte Persona" Theme="Office2010Black">
            </dx:ASPxLabel>
            <%--Botón cuya función sera realizar la busqueda con el nombre introducido en el TextBox esto mandara a otra página --%>
            <dx:ASPxButton ID="ASPxButton1Buscar" runat="server" Font-Bold="True" 
                Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Large" 
                style="z-index: 1; left: 1138px; top: 147px; position: absolute" Text="Buscar" 
                Theme="Office2010Blue">
            </dx:ASPxButton>
            <dx:ASPxLabel ID="ASPxLabel2" runat="server" AssociatedControlID="ASPxLabel2" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 473px; top: 151px; position: absolute; width: 152px;" 
                Text="Selecciona Perfil" Theme="Office2010Black">
            </dx:ASPxLabel> 
            <%--ComboBox en donde se introducira el nombre de la persona a la que se le desea hacer un reporte--%>   
            <dx:ASPxComboBox ID="ASPxComboBoxPerfil" runat="server" EnableTheming="True" 
                SelectedIndex="0" 
                style="z-index: 1; left: 631px; top: 147px; position: absolute; height: 26px; width: 170px" 
                Theme="Office2010Blue">
                <Items>
                    <dx:ListEditItem Selected="True" Text="Selecciona Perfil" Value="0" />
                </Items>
                <ClearButton Visibility="True">
                </ClearButton>
            </dx:ASPxComboBox>
            </div>
    </div>
    <div class="footer">
        
    </div>

    </div>
    </form>
</body>
</html>
