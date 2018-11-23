<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionReporteMeses.aspx.vb"
    Inherits="SeccionReporteMeses" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte Por Mes</title>
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
                    <%--Ménu en donde el usuario se desplazara--%>
                    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false"
                        IncludeStyleBlock="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/SeccionReportes.aspx" Text="Regresar" Value="Regresar" />
                        </Items>
                    </asp:Menu>
                </div>
            </div>
            <div class="main">
                <%--Titulo de la página--%>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Bold="True" Font-Names="Book Antiqua"
                    Font-Size="X-Large" ForeColor="Black" Style="z-index: 1; left: 660px; top: 38px;
                    position: absolute; width: 183px;" Text="Reporte Meses">
                </dx:ASPxLabel>
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" AssociatedControlID="ASPxLabel2" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" Style="z-index: 1;
                    left: 295px; top: 136px; position: absolute" Text="Selecciona el Mes" Theme="Office2010Black">
                </dx:ASPxLabel>
                <%--ComboBox en donde se almacenaran los meses del año para poder realizar la busqueda--%>
                <dx:ASPxComboBox ID="ASPxComboBoxMes" runat="server" EnableTheming="True" SelectedIndex="0"
                    Style="z-index: 1; left: 456px; top: 134px; position: absolute; height: 26px;
                    width: 170px" Theme="Office2010Blue">
                    <Items>
                        <dx:ListEditItem Selected="True" Text="Selecciona el Mes" Value="0" />
                    </Items>
                    <ClearButton Visibility="True">
                    </ClearButton>
                </dx:ASPxComboBox>
                <%--Tabla que mostrara los datos obtenidos dependiendo del criterio de busqueda del ComboBox--%>
                <dx:ASPxGridView ID="ASPxGridViewMes" runat="server" 
                    AutoGenerateColumns="False" Style="z-index: 1;
                    left: 523px; top: 226px; position: absolute; height: 163px; width: 615px" 
                    Theme="Office2010Blue">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Tipo de Curso" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre del Curso" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Lugar" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Núm. Asistentes" UnboundType="Integer" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Hombres" Visible="False" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Mujeres" Visible="False" VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>
    <%--Botón que cumplira la funcion de imprimir la información de la tabla--%>
    <dx:ASPxButton ID="ASPxButtonImprimir" runat="server" Font-Bold="True" Font-Italic="True"
        Font-Names="Book Antiqua" Font-Size="Medium" Style="z-index: 1; left: 1311px;
        top: 560px; position: absolute" Text="Imprimir" Theme="Office2010Blue">
    </dx:ASPxButton>
    <%--Función Para Exportar El GridView (Tabla) En PDF --%>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporterPDF" runat="server" 
        GridViewID="ASPxGridViewMes" FileName="Reporte de Eventos Por Mes" 
        BottomMargin="5" DetailHorizontalOffset="50" DetailVerticalOffset="50" 
        LeftMargin="5">
        <PageHeader Center="Reporte de Cursos/Eventos Por Mes" Left="[Date Printed]" 
            Right="[Time Printed]">
            <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
        </PageHeader>
        <PageFooter Left="Fiscalía General del Estado de Sinaloa" Right="[Page #]">
            <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
        </PageFooter>
    </dx:ASPxGridViewExporter>
    </form>
</body>
</html>
