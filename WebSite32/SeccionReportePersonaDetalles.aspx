<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionReportePersonaDetalles.aspx.vb" Inherits="SeccionReportePersonaDetalles" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte Por Persona Detallado</title>
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
                        <asp:MenuItem NavigateUrl="~/SeccionReportePersona.aspx" Text="Regresar" 
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
                style="z-index: 1; left: 926px; top: 138px; position: absolute; width: 185px;" 
                Text="Reporte Persona">
            </dx:ASPxLabel>
            <dx:ASPxLabel ID="ASPxLabel2" runat="server" AssociatedControlID="ASPxLabel2" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Medium" ForeColor="Black" 
                
                style="z-index: 1; left: 545px; top: 201px; position: absolute; bottom: 409px;" Text="Nombre" 
                Theme="Office2010Black">
            </dx:ASPxLabel>
             <%--TextBox en donde se mostrara el nombre de la persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxNomb" runat="server" 
                style="z-index: 1; left: 613px; top: 202px; position: absolute; height: 24px; width: 170px; right: 615px;" 
                Theme="Office2010Black" Width="170px">
            </dx:ASPxTextBox>
            <dx:ASPxLabel ID="ASPxLabel4" runat="server" AssociatedControlID="ASPxLabel4" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 811px; top: 207px; position: absolute" Text="Puesto" 
                Theme="Office2010Black">
            </dx:ASPxLabel>
            <dx:ASPxLabel ID="ASPxLabel3" runat="server" AssociatedControlID="ASPxLabel3" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 521px; top: 250px; position: absolute" 
                Text="Dirección" Theme="Office2010Black">
            </dx:ASPxLabel>
             <%--TextBox en donde se mostrara la dirección de la persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxDire" runat="server" 
                style="z-index: 1; left: 612px; top: 248px; position: absolute; height: 24px; width: 170px; right: 715px; margin-top: 0px" 
                Theme="Office2010Black" Width="170px">
            </dx:ASPxTextBox>
             <%--TextBox en donde se mostrara el puesto de la persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxPues" runat="server" 
                style="z-index: 1; left: 876px; top: 207px; position: absolute; height: 24px; width: 170px" 
                Theme="Office2010Black" Width="170px">
            </dx:ASPxTextBox>
            <dx:ASPxLabel ID="ASPxLabel5" runat="server" AssociatedControlID="ASPxLabel5" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 809px; top: 245px; position: absolute" Text="Área" 
                Theme="Office2010Black">
            </dx:ASPxLabel>
             <%--TextBox en donde se mostrara el área de la persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxArea" runat="server" 
                style="z-index: 1; left: 877px; top: 253px; position: absolute; height: 24px; width: 170px" 
                Theme="Office2010Black" Width="170px">
            </dx:ASPxTextBox>
            <dx:ASPxLabel ID="ASPxLabel6" runat="server" AssociatedControlID="ASPxLabel6" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 1074px; top: 208px; position: absolute; width: 138px;" 
                Text="Tipo de Persona" Theme="Office2010Black">
            </dx:ASPxLabel>
             <%--TextBox en donde se mostrara el Tipo de persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxTiper" runat="server" 
                style="z-index: 1; left: 1221px; top: 209px; position: absolute; height: 24px; width: 166px; bottom: 173px" 
                Theme="Office2010Black">
            </dx:ASPxTextBox>
            <dx:ASPxLabel ID="ASPxLabel7" runat="server" AssociatedControlID="ASPxLabel7" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black" 
                style="z-index: 1; left: 1073px; top: 254px; position: absolute; width: 130px;" 
                Text="Total de Cursos" Theme="Office2010Black">
            </dx:ASPxLabel>
             <%--TextBox en donde se mostrara el total de cursos de la persona--%>
            <dx:ASPxTextBox ID="ASPxTextBoxTotCu" runat="server" 
                style="z-index: 1; left: 1221px; top: 256px; position: absolute; height: 24px; width: 170px" 
                Theme="Office2010Black" Width="170px">
            </dx:ASPxTextBox>
             <%--Tabla en donde se mostraran los cursos de la persona--%>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                style="z-index: 1; left: 554px; top: 311px; position: absolute; height: 161px; width: 840px" 
                Theme="Office2010Blue">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="Tipo de Curso" VisibleIndex="0">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nombre del Curso" VisibleIndex="1">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
             <%--Botón que mandara a imprimir la informacion de la tabla y de los TextBox de la persona--%>
            <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Bold="True" 
                Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Medium" 
                style="z-index: 1; left: 1299px; top: 509px; position: absolute" Text="Imprimir" 
                Theme="Office2010Blue">
            </dx:ASPxButton>
        &nbsp;&nbsp;&nbsp;
        </div>
    </div>
    <div class="footer">
        
    </div>

    </div>
    </form>
</body>
</html>
