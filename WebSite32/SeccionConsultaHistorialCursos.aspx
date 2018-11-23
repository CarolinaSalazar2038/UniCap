<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionConsultaHistorialCursos.aspx.vb" Inherits="SeccionConsultaHistorialCursos" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta Historial de Cursos de Asistentes</title>
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
            <%--Sección del ménu en donde el usuario se desplazara--%>
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/SeccionConsultaHistorial.aspx" Text="Regresar" 
                            Value="Regresar"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
        <%--Titulo de la página--%>
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="X-Large" 
                ForeColor="Black" 
                style="z-index: 1; left: 562px; top: 156px; position: absolute; width: 382px;" 
                Text="Consulta de Cursos del Asistente" Theme="Office2010Black">
            </dx:ASPxLabel>
            <%--Tabla en donde se podran visualizar los datos mas detallados de los cursos del asistente--%>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                style="z-index: 1; left: 564px; top: 226px; position: absolute; height: 183px; width: 727px" 
                Theme="Office2010Blue">
                <Columns>
                    <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5" 
                        ShowClearFilterButton="True">
                        <CustomButtons>
<%--Botón que se encargara de imprimir la información seleccionada de la persona buscada--%>
                            <dx:GridViewCommandColumnCustomButton ID="Imprimir" Text="Imprimir">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="Tipo Evento" VisibleIndex="0">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Curso" VisibleIndex="1">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Lugar" VisibleIndex="2">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Fecha Inicio" UnboundType="DateTime" 
                        VisibleIndex="3">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Fecha Fin" UnboundType="DateTime" 
                        VisibleIndex="4">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
    </div>
    <div class="footer">
        
    </div>

    </div>
    </form>
</body>
</html>
