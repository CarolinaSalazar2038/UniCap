<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionAsistentes.aspx.vb"
    Inherits="SeccionAsistentes" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro de Nuevo Asistente</title>
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
                    <%--Esta Sección del codigo especifica el menu de navegación en la que el usuario se desplazara--%>
                    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false"
                        IncludeStyleBlock="false" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Página principal" />
                        </Items>
                    </asp:Menu>
                </div>
            </div>
            <div class="main">
                <%--Titulo de la Página--%>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" Font-Bold="True"
                    Font-Names="Book Antiqua" Font-Size="X-Large" ForeColor="Black" Style="z-index: 1;
                    left: 652px; top: 39px; position: absolute" Text="Registro de Asistentes" 
                    Theme="Office2010Black">
                </dx:ASPxLabel>
                <%--Tabla en donde se mostraran los datos de la ventana modal que se despliega desde el menu de la pagina Consulta Eventos con la opción Buscar--%>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" EnableTheming="True"
                    Style="z-index: 1; left: 278px; top: 177px; position: relative; height: 162px;
                    width: 855px; margin-top: 19px" Theme="Office2010Blue">
                    <Columns>
                        <dx:GridViewCommandColumn ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True"
                            VisibleIndex="8">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="TipoEvento" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NombreEvento" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="Tipo Persona" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataDateColumn FieldName="Nombre" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="Sexo" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Dirección" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Área" VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Puesto" VisibleIndex="6">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>

                <%--Botón que desplegara una ventana modal para insertar nuevos asistentes--%>
                <div>
                    <dx:ASPxButton ID="ASPxBtnNuevoAsistente" runat="server" Font-Bold="True" Font-Italic="True"
                        Font-Names="Book Antiqua" Font-Size="Medium" Style="z-index: 1; left: 1031px;
                        top: 104px; position: absolute; height: 24px" Text="Nuevo Asistente" 
                        Theme="Office2010Blue">
                    </dx:ASPxButton>

                    <%--Función PopupControl para especificar la ventana emergente--%>
                    <dx:ASPxPopupControl ID="ASPxPopupControl1" CloseOnEscape="True"
                        ClientInstanceName="PopupVentana" Modal="True" PopupVerticalAlign="WindowCenter"
                        PopupHorizontalAlign="WindowCenter" HeaderText="Nuevo Asistente" AllowDragging="True"
                        PopupAnimationType="Slide" EnableViewState="False" runat="server" Height="421px"
                        Width="422px" Theme="Office2010Blue" ShowCollapseButton="True">
                        <ContentCollection>
                            <dx:PopupControlContentControl>
                                <dx:ASPxPanel ID="ASPxPanel1" runat="server" DefaultButton="ASPxbtnGuardar">
                                    <PanelCollection>
                                        <dx:PanelContent runat="server">
                                            <dx:ASPxFormLayout runat="server" ID="ASPxFormLayout1" Width="100%" Height="98%">
                                                <Items>


                                                    <dx:LayoutItem Caption="Tipo Evento">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxComboBox ID="ASPxComboBoxTipEven" runat="server" Width="100%" ClientInstanceName="tbTipoEvento"
                                                                    ValueType="System.String" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small"
                                                                    Theme="Office2010Blue" SelectedIndex="0">
                                                                    <Items>
                                                                    </Items>
                                                                    <ClearButton Visibility="True">
                                                                    </ClearButton>
                                                                    <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true"
                                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="true">
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
                                                                <dx:ASPxTextBox ID="ASPxTextBoxNombreEvento" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbNombreEvento" ToolTip="Ingrese Nombre de Evento">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Nombre Evento Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Nombre Evento Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                        </ErrorFrameStyle>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                                <br />
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Tipo Personal">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxComboBox ID="ASPxComboBoxTipoPersonal" runat="server" Width="100%" ClientInstanceName="tbTipoPersonal"
                                                                    ValueType="System.String" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small"
                                                                    Theme="Office2010Blue">
                                                                    <ClearButton Visibility="True">
                                                                    </ClearButton>
                                                                    <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true"
                                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="true">
                                                                        <RequiredField ErrorText="Tipo Personal Requerido" IsRequired="true" />
                                                                        <RegularExpression ErrorText="Tipo Requerido" />
                                                                        <ErrorFrameStyle Font-Size="10px">
                                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                                            <ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                                        </ErrorFrameStyle>
                                                                        <RegularExpression ErrorText="Tipo Requerido"></RegularExpression>
                                                                        <RequiredField IsRequired="True" ErrorText="Tipo Personal Requerido"></RequiredField>
                                                                    </ValidationSettings>
                                                                </dx:ASPxComboBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Nombre del Asistente">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxNombreAsistente" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbNombreEvento" ToolTip="Ingresa Nombre del Asistente">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Nombre Asistente Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Nombre Asistente Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                        </ErrorFrameStyle>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                               
                             <br />
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Sexo">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxComboBox ID="ASPxComboBoxSexo" runat="server" Width="100%" ClientInstanceName="tbSexo"
                                                                    ValueType="System.String" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small"
                                                                    Theme="Office2010Blue" SelectedIndex="2">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="Masculino" Value="0" />
                                                                        <dx:ListEditItem Text="Femenino" Value="1" />
                                                                        <dx:ListEditItem Selected="True" Text="Seleccione el Sexo" Value="2" />
                                                                    </Items>
                                                                    <ClearButton Visibility="True">
                                                                    </ClearButton>
                                                                    <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true"
                                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="true">
                                                                        <RequiredField ErrorText="Sexo Requerido" IsRequired="true" />
                                                                        <RegularExpression ErrorText="Sexo Requerido" />
                                                                        <ErrorFrameStyle Font-Size="10px">
                                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                                            <ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                                        </ErrorFrameStyle>
                                                                        <RegularExpression ErrorText="Sexo Requerido"></RegularExpression>
                                                                        <RequiredField IsRequired="True" ErrorText="Sexo Requerido"></RequiredField>
                                                                    </ValidationSettings>
                                                                </dx:ASPxComboBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Área">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxComboBox ID="ASPxComboBoxÁrea" runat="server" Width="100%" ClientInstanceName="tbÁrea"
                                                                    ValueType="System.String" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small"
                                                                    Theme="Office2010Blue">
                                                                    <ClearButton Visibility="True">
                                                                    </ClearButton>
                                                                    <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true"
                                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="true">
                                                                        <RequiredField ErrorText="Área Requerida" IsRequired="true" />
                                                                        <RegularExpression ErrorText="Área Requerida" />
                                                                        <ErrorFrameStyle Font-Size="10px">
                                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                                            <ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                                        </ErrorFrameStyle>
                                                                        <RegularExpression ErrorText="&#193;rea Requerida"></RegularExpression>
                                                                        <RequiredField IsRequired="True" ErrorText="&#193;rea Requerida"></RequiredField>
                                                                    </ValidationSettings>
                                                                </dx:ASPxComboBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Puesto">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxComboBox ID="ASPxComboBoxPuesto" runat="server" Width="100%" ClientInstanceName="tbPuesto"
                                                                    ValueType="System.String" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small"
                                                                    Theme="Office2010Blue">
                                                                    <ClearButton Visibility="True">
                                                                    </ClearButton>
                                                                    <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true"
                                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="true">
                                                                        <RequiredField ErrorText="Puesto Requerido" IsRequired="true" />
                                                                        <RegularExpression ErrorText="Puesto Requerido" />
                                                                        <ErrorFrameStyle Font-Size="10px">
                                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                                            <ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                                        </ErrorFrameStyle>
                                                                        <RegularExpression ErrorText="Puesto Requerido"></RegularExpression>
                                                                        <RequiredField IsRequired="True" ErrorText="Puesto Requerido"></RequiredField>
                                                                    </ValidationSettings>
                                                                </dx:ASPxComboBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Dirección">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxDirección" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbDirección" ToolTip="Ingresa Dirección">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Dirección Requerida" IsRequired="True" />
                                                        <RegularExpression ErrorText="Dirección Requerida" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
                                                        </ErrorFrameStyle>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>

                                         

 <%--Aqui se especifica Los botones de buscar o cancelar--%>

                                                  <dx:LayoutItem ShowCaption="false">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                            <br />
                                                                <dx:ASPxButton ID="ASPxbtnGuardar" runat="server" Text="Guardar" Width="80px" AutoPostBack="false"
                                                                    Style="float: Left; margin-right: 8px" Theme="Office2010Blue">
                                                                </dx:ASPxButton>
                                                                <dx:ASPxButton ID="ASPxbtnCancelar" runat="server" Text="Cancelar" Width="80px" AutoPostBack="false"
                                                                    Style="float: right; margin-right: 8px" Theme="Office2010Blue">
                                                                </dx:ASPxButton>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>
                                                </Items>
                                            </dx:ASPxFormLayout>
                                            .
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
