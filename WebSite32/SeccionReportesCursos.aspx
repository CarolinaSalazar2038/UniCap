<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionReportesCursos.aspx.vb"
    Inherits="SeccionReportesCursos" %>

<%----%>
<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Curso Por Tema</title>
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
                    <%--Sección del ménu en donde se desplazara el usuario--%>
                    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false"
                        IncludeStyleBlock="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/SeccionReportes.aspx" Text="Regresar" />
                        </Items>
                    </asp:Menu>
                </div>
            </div>
            <div class="main">
                <%--Titulo de la Página--%>
                <dx:ASPxLabel ID="ASPxLabelTitulo" runat="server" AssociatedControlID="ASPxLabelTitulo" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="X-Large" ForeColor="Black" Style="z-index: 1;
                    left: 705px; top: 36px; position: absolute; width: 237px;" Text="Reporte Cursos"
                    Theme="Office2010Black">
                </dx:ASPxLabel>
                <dx:ASPxLabel ID="ASPxLabelTema" runat="server" AssociatedControlID="ASPxLabelTema" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" Style="z-index: 1;
                    left: 429px; top: 123px; position: absolute" Text="Tema:" Theme="Office2010Black">
                </dx:ASPxLabel>
                <%--ComboBox en donde se seleccionara el tema a buscar--%>
                <dx:ASPxComboBox ID="ASPxComboBoxTema" runat="server" EnableTheming="True" Style="z-index: 1;
                    left: 507px; top: 125px; position: absolute; height: 26px; width: 170px" TextField="Selecciona Tema"
                    Theme="Office2010Blue" AutoPostBack="true">
                    <Items>
                        <dx:ListEditItem Text="Selecciona Tema" Value="0" />
                    </Items>
                    <ClearButton Visibility="True">
                    </ClearButton>
                </dx:ASPxComboBox>
                <%--Botón que cumplira la función de imprimir la información de la tabla--%>
                <dx:ASPxButton ID="ASPxButtonImprimir" runat="server" Font-Bold="True" Font-Italic="True"
                    Font-Names="Book Antiqua" Font-Size="Medium" Style="z-index: 1; left: 1121px;
                    top: 147px; position: absolute" Text="Imprimir" Theme="Office2010Blue">
                </dx:ASPxButton>
                <%--Codigo Para Exportar El GridView a PDF--%>
                <dx:ASPxGridViewExporter ID="ASPxGridViewExporterPDF" runat="server" GridViewID="ASPxGridViewTema"
                    FileName="Reporte de Curso Por Tema" BottomMargin="5" DetailHorizontalOffset="50"
                    DetailVerticalOffset="50" LeftMargin="5">
                    <Styles>
                        <Default HorizontalAlign="Center">
                        </Default>
                        <Header HorizontalAlign="Center">
                        </Header>
                        <Cell HorizontalAlign="Center">
                        </Cell>
                        <Footer HorizontalAlign="Center">
                        </Footer>
                        <Title HorizontalAlign="Center"></Title>
                        <AlternatingRowCell HorizontalAlign="Center">
                        </AlternatingRowCell>
                    </Styles>
                    <PageHeader Center="Reporte de Curso" Left="[Date Printed]" Right="[Time Printed]">
                        <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
                    </PageHeader>
                    <PageFooter Left="Fiscalía General Del Estado de Sinaloa" Right="[Page #]">
                        <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
                    </PageFooter>
                </dx:ASPxGridViewExporter>
                <%--Tabla en donde se mostrara los datos dependiendo del criterio de busqueda del ComboBox--%>
                <dx:ASPxGridView ID="ASPxGridViewTema" runat="server" Theme="Office2010Blue" 
                    style="z-index: 1; left: 532px; top: 207px; position: absolute; height: 196px; width: 620px">
                </dx:ASPxGridView>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>
    </form>
</body>
</html>
