<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionExpositores.aspx.vb" Inherits="SeccionExpositores" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reportes</title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

.dxeBase_Office2010Black
{
	font: 11px Verdana, Geneva, sans-serif;
}
    </style>
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
                style="z-index: 1; left: 685px; top: 31px; position: absolute; width: 259px;" 
                Text="Registro Expositores" Theme="Office2010Black">
            </dx:ASPxLabel>

               <%--Botón que desplegara una ventana modal para insertar nuevos expositores--%>
                <div>
                    <dx:ASPxButton ID="ASPxBtnNuevoExpositor" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Names="Book Antiqua" 
                    Font-Size="Medium" 
                        
                        Style="z-index: 1; left: 1029px; top: 82px; position: absolute; height: 24px" Text="Nuevo Expositor" 
                    Theme="Office2010Blue">
                    </dx:ASPxButton>

                    <%--Función PopupControl para especificar la ventana emergente--%>
                    <dx:ASPxPopupControl ID="ASPxPopupControl1" CloseOnEscape="True"
                        ClientInstanceName="PopupVentana" Modal="True" PopupVerticalAlign="WindowCenter"
                        PopupHorizontalAlign="WindowCenter" HeaderText="Nuevo Expositor" AllowDragging="True"
                        PopupAnimationType="Slide" EnableViewState="False" runat="server" Height="421px"
                        Width="422px" Theme="Office2010Blue" ShowCollapseButton="True" 
                        style="margin-right: 0px">
                        <ContentCollection>
                            <dx:PopupControlContentControl>
                                <dx:ASPxPanel ID="ASPxPanel1" runat="server" DefaultButton="ASPxbtnGuardar">
                                    <PanelCollection>
                                        <dx:PanelContent ID="PanelContent1" runat="server">
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


                                                     <dx:LayoutItem Caption="Exposición">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxExposicion" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbExposicion" ToolTip="Ingresa Exposicion">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Exposicion Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Exposicion Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Exposicion Requerido"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Exposicion Requerido"></RequiredField>
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
                                                                    Theme="Office2010Blue" SelectedIndex="2">
                                                                    <Items>
                                                                        <dx:ListEditItem Text="Interno" Value="1" />
                                                                        <dx:ListEditItem Text="Externo" Value="2" />
                                                                        <dx:ListEditItem Selected="True" Text="Seleccione el Tipo de Personal" 
                                                                            Value="0" />
                                                                    </Items>
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


                                                    <dx:LayoutItem Caption="Nombre del Expositor">
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
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Nombre Asistente Requerido"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Nombre Asistente Requerido"></RequiredField>
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
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Direcci&#243;n Requerida"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Direcci&#243;n Requerida"></RequiredField>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
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

                                                     <dx:LayoutItem Caption="Profesión">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxProfesión" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbProfesión" ToolTip="Ingresa Profesión">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Profesión Requerida" IsRequired="True" />
                                                        <RegularExpression ErrorText="Profesión Requerida" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Profesi&#243;n Requerida"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Profesi&#243;n Requerida"></RequiredField>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Correo Electronico">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxCorreoElec" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbCorreoElectronico" ToolTip="Ingresa Correo Electronico">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Correo Electronico Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Correo Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Correo Requerido"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Correo Electronico Requerido"></RequiredField>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Telefono">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxTelefono" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbTelefono" ToolTip="Ingresa Telefono">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Telefono Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Telefono Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Telefono Requerido"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Telefono Requerido"></RequiredField>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>


                                                    <dx:LayoutItem Caption="Lugar de Trabajo">
                                                        <LayoutItemNestedControlCollection>
                                                            <dx:LayoutItemNestedControlContainer>
                                                                <dx:ASPxTextBox ID="ASPxTextBoxLugarTrabajo" runat="server" Width="100%" Theme="Office2010Blue"
                                                                    ClientInstanceName="tbLugarTrabajo" ToolTip="Ingresa Lugar de Trabajo">
                                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Lugar de Trabajo Requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Lugar de Trabajo Requerido" />
                                                        <ErrorFrameStyle Font-Size="10px">
                                                            <ErrorTextPaddings PaddingLeft="0px" />
<ErrorTextPaddings PaddingLeft="0px"></ErrorTextPaddings>
                                                        </ErrorFrameStyle>

<RegularExpression ErrorText="Lugar de Trabajo Requerido"></RegularExpression>

<RequiredField IsRequired="True" ErrorText="Lugar de Trabajo Requerido"></RequiredField>
                                                    </ValidationSettings>
                                                                </dx:ASPxTextBox>
                                                            </dx:LayoutItemNestedControlContainer>
                                                        </LayoutItemNestedControlCollection>
                                                    </dx:LayoutItem>                  

 <%--Aqui se especifica Los botones de Guardar o cancelar--%>

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
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxPanel>
                            </dx:PopupControlContentControl>
                        </ContentCollection>
                    </dx:ASPxPopupControl>
                </div>


                <%--Tabla en donde se mostraran los datos de la ventana modal que se despliega desde el menu de la pagina Consulta Eventos con la opción Buscar--%>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                                style="z-index: 2; left: 396px; top: 84px; position: absolute; height: 145px; width: 758px; margin-top: 87px; right: -197px;" 
                                                Theme="Office2010Blue">
                                                <Columns>
                                                    <dx:GridViewDataTextColumn FieldName="Tipo Evento" 
                                                        ShowInCustomizationForm="True" VisibleIndex="0">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Exposición" 
                                                        ShowInCustomizationForm="True" VisibleIndex="1">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="TipoPersonal" 
                                                        ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Expositor" ShowInCustomizationForm="True" 
                                                        VisibleIndex="3">
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewCommandColumn ButtonType="Button" ShowDeleteButton="True" 
                                                        ShowEditButton="True" VisibleIndex="5">
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
