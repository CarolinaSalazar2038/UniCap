<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionConsultaEventosDetalles.aspx.vb"
    Inherits="SeccionConsultaEventosDetalles" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consultas de Eventos</title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%--Conexion a la base de datos--%>

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
                    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false"
                        IncludeStyleBlock="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/SeccionConsulta.aspx" Text="Regresar" Value="Regresar">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal" />
                        </Items>
                    </asp:Menu>
                </div>
            </div>
            <div class="main">
                <%--Titulo de la página--%>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                                   Font-Bold="True" Font-Names="Book Antiqua" Font-Size="X-Large" 
                                   ForeColor="Black" Style="z-index: 1;
                    left: 667px; top: 41px; position: absolute; width: 234px" Text="Consulta de Eventos" 
                                   Theme="Office2010Black">
                               </dx:ASPxLabel>
                <%--Tabla en donde se mostraran los datos de la ventana modal que se despliega desde el menu de la pagina Consulta Eventos con la opción Buscar--%>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" EnableTheming="True"
                    Style="z-index: 1; left: 378px; top: 145px; position: absolute; height: 170px;
                    width: 776px" Theme="Office2010Blue">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Curso" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Lugar" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Dirección" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Duración (Hrs.)" VisibleIndex="5" 
                            UnboundType="Integer">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre del Evento" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <%--Botón que desplegara una ventana modal en donde se introduciran los datos del evento para almacenarlos--%>
                <div>
                    <dx:ASPxButton ID="ASPxbtnBuscarEvento" runat="server" Font-Bold="true" Font-Italic="true"
                        Font-Names="Book Antiqua" Font-Size="Medium" Style="z-index: 1; left: 1021px;
                        top: 88px; position: absolute; height: 24px" Text="Buscar Evento" 
                        Theme="Office2010Blue">
                    </dx:ASPxButton>
                    <%--Función PopupControl para especificar la ventana emergente--%>
                    <dx:ASPxPopupControl ID="ASPxPopupControl1" 
                        CloseAction="OuterMouseClick" CloseOnEscape="true" ClientInstanceName="PopupVentana"
                        Modal="true" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter"
                        HeaderText="Buscar Evento" AllowDragging="true" PopupAnimationType="Slide" EnableViewState="false"
                        runat="server" Height="252px" Width="422px" Theme="Office2010Blue" ShowCollapseButton="true">
                        <ContentCollection>
                            <%--Aqui se especifica el contenido de la ventana emergente o modal--%>
                            <dx:PopupControlContentControl>
                                <dx:ASPxPanel ID="Panel1" runat="server" DefaultButton="ASPxbtnBuscar">
                            <PanelCollection>
                            <dx:PanelContent runat="server">
                            <dx:ASPxFormLayout runat="server" ID="ASPxFormLayout1" Width="100%" Height="98%">
                           <Items>

                           <dx:LayoutItem Caption="Tipo Evento">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="ASPxComboBoxTipEven" runat="server" Width="100%" ClientInstanceName="tbTipoEvento" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Tipo de Evento Requerido" IsRequired="true" />
                           <RegularExpression ErrorText="Tipo Requerido" />
                           <ErrorFrameStyle Font-Size="10px">
                             <ErrorTextPaddings PaddingLeft="0px" />
                            <ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                           </ErrorFrameStyle>
<RegularExpression ErrorText="Tipo Requerido"></RegularExpression>
<RequiredField IsRequired="True" ErrorText="Tipo de Evento Requerido"></RequiredField>
                           </ValidationSettings>
                           </dx:ASPxComboBox> 
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem> 
                       
                           <dx:LayoutItem Caption="Nombre del Evento">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="ASPxComboBoxNomEvent" runat="server" Width="100%" ClientInstanceName="tbNombreEvento" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Nombre de Evento Requerido" IsRequired="true" />
                           <RegularExpression ErrorText="Nombre Requerido" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                           </ErrorFrameStyle>
                           <RegularExpression ErrorText="Nombre Requerido" />
                           <RequiredField IsRequired="true" ErrorText="Nombre del Evento Requerido" />
<RegularExpression ErrorText="Nombre Requerido"></RegularExpression>
<RequiredField IsRequired="True" ErrorText="Nombre del Evento Requerido"></RequiredField>
                           </ValidationSettings>
                           </dx:ASPxComboBox>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>
                           
                           <dx:LayoutItem Caption="Fecha del Evento">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxDateEdit ID="ASPxDataEditFechaIn" runat="server" Width="100%" ClientInstanceName="tbFechaInicioEvento" EnableTheming="true" 
                           Font-Size="Small" Font-Bold="true" Font-Names="Book Antiqua" Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Fecha Requerida" IsRequired="true" />
                           <RegularExpression ErrorText="Fecha Inicio Requerida" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                           </ErrorFrameStyle>

<RegularExpression ErrorText="Fecha Inicio Requerida"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Fecha Requerida"></RequiredField>
                           </ValidationSettings>
                           </dx:ASPxDateEdit>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>
                           
                            <dx:LayoutItem Caption="A">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" Width="100%" ClientInstanceName="tbFechaFinEvento" EnableTheming="true" 
                           Font-Size="Small" Font-Bold="true" Font-Names="Book Antiqua" Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Fecha Requerida" IsRequired="true" />
                           <RegularExpression ErrorText="Fecha Fin Requerida" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                           </ErrorFrameStyle>

<RegularExpression ErrorText="Fecha Fin Requerida"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Fecha Requerida"></RequiredField>
                           </ValidationSettings>
                           </dx:ASPxDateEdit>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>
  <%--Aqui se especifica Los botones de buscar o cancelar--%>

                           <dx:LayoutItem ShowCaption="false">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxButton ID="ASPxbtnBuscar" runat="server" Text="Buscar" Width="80px" AutoPostBack="false" Style="float:Left; margin-right:8px" theme="Office2010Blue">
                           </dx:ASPxButton>

                           <dx:ASPxButton ID="ASPxbtnCancelar" runat="server" Text="Cancelar" Width="80px" AutoPostBack="false" Style="float:right; margin-right:8px" theme="Office2010Blue">
                           </dx:ASPxButton>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>

                           </Items>
                            </dx:ASPxFormLayout>
                            </dx:PanelContent>
                                </PanelCollection>
                                </dx:ASPxPanel>
                            </dx:PopupControlContentControl>
                        </ContentCollection>
                    </dx:ASPxPopupControl>
                </div>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>
    </form>
</body>
</html>
