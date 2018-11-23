<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionConsultaHistorial.aspx.vb" Inherits="SeccionConsultaHistorial" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consultas Historial de Asistentes</title>
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
                        <asp:MenuItem NavigateUrl="~/SeccionConsulta.aspx" Text="Regresar" 
                            Value="Regresar"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
            <%--Titulo de la Página--%>
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="X-Large" 
                ForeColor="Black" 
                style="z-index: 1; left: 623px; top: 25px; position: absolute; margin-bottom: 0px; width: 255px;" 
                Text="Consulta de Asistentes" Theme="Office2010Black">
            </dx:ASPxLabel>

                     
            <dx:ASPxLabel ID="ASPxLabelNombre" runat="server" Font-Bold="True" 
                Font-Names="Book Antiqua" Font-Size="Large" ForeColor="Black"
                style="z-index: 1; left: 427px; top: 99px; position: absolute; right: 457px;" 
                Text="Nombre:">
            </dx:ASPxLabel>
            <%--Textbox en donde se introducira el nombre del asistente a buscar--%>   
            <dx:ASPxTextBox ID="ASPxTextBoxNombre" runat="server" 
                style="z-index: 1; left: 521px; top: 101px; position: absolute; height: 24px; width: 521px" 
                Theme="Office2010Blue">
            </dx:ASPxTextBox>
            
            <%--Boton que se encargara de buscar los datos del nombre introducido en el TextBox--%>
            <dx:ASPxButton ID="ASPxButtonBuscar" runat="server" Font-Bold="True" 
                Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Medium" 
                style="z-index: 1; top: 98px; position: absolute; height: 22px; width: 79px; left: 1092px;" 
                Text="Buscar" Theme="Office2010Blue">
            </dx:ASPxButton>
            <%--Tabla en donde se mostrara los datos del asistente buscado--%> 
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                EnableTheming="True" 
                style="z-index: 1; left: 451px; top: 186px; position: absolute; height: 193px; width: 675px" 
                Theme="Office2010Blue">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="0">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Dirección" VisibleIndex="1">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Área" VisibleIndex="2">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Puesto" VisibleIndex="3">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Tipo de Persona" VisibleIndex="4">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewCommandColumn ButtonType="Button" VisibleIndex="5">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="Cursos" Text="Cursos">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Imprimir" Text="Imprimir">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewCommandColumn>
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
