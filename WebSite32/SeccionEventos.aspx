<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SeccionEventos.aspx.vb"
    Inherits="SeccionEventos" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body text="Registro de Nuevo Evento">
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
                    top: 23px; position: absolute; left: 623px;" Text="Alta de Eventos" 
                    Theme="Office2010Black">
                </dx:ASPxLabel>
                <%--Tabla en donde se visualizara la información agregada por la ventana modal--%>
                <dx:ASPxGridView  ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                                   EnableTheming="True" Style="z-index: 1; left: 310px; top: 131px; position: absolute; height: 162px;
                    width: 855px; margin-top: 19px" Theme="Office2010Blue">
                                   <Columns>
                                       <dx:GridViewCommandColumn ButtonType="Button" ShowDeleteButton="True" 
                                           ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="8">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewCommandColumn>
                                       <dx:GridViewDataTextColumn FieldName="TipoEvento" 
                                           ShowInCustomizationForm="True" VisibleIndex="0">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataTextColumn FieldName="NombreEvento" 
                                           ShowInCustomizationForm="True" VisibleIndex="1">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataDateColumn FieldName="FechaInicio" 
                                           ShowInCustomizationForm="True" VisibleIndex="2">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataDateColumn>
                                       <dx:GridViewDataDateColumn FieldName="FechaFin" ShowInCustomizationForm="True" 
                                           VisibleIndex="3">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataDateColumn>
                                       <dx:GridViewDataTextColumn FieldName="HorasDiarias" 
                                           ShowInCustomizationForm="True" VisibleIndex="5">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataTextColumn FieldName="Lugar" ShowInCustomizationForm="True" 
                                           VisibleIndex="6">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataTextColumn FieldName="NumeroAsistentes" 
                                           ShowInCustomizationForm="True" VisibleIndex="7">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataTextColumn FieldName="Duracion" ShowInCustomizationForm="True" 
                                           VisibleIndex="4">
                                           <HeaderStyle HorizontalAlign="Center" />
                                       </dx:GridViewDataTextColumn>
                                   </Columns>
                               </dx:ASPxGridView>
                <%--Botón que desplegara una ventana modal en donde se introduciran los datos del evento para almacenarlos--%>
                <div>
                    <dx:ASPxButton ID="ASPxBtnAbrirEvento" runat="server" Font-Bold="True" Font-Italic="True"
                        Font-Names="Book Antiqua" Font-Size="Medium" Style="z-index: 1; left: 1025px;
                        top: 78px; position: absolute; height: 24px" Text="Nuevo Evento" 
                        Theme="Office2010Blue">
                    </dx:ASPxButton>
                    <%--Función PopupControl para especificar la ventana emergente--%>
                    <dx:ASPxPopupControl ID="ASPxPopupControl1" CloseAction="CloseButton" CloseOnEscape="true" ClientInstanceName="PopupVentana" 
                        Modal="true" PopupHorizontalAlign="WindowCenter"
                        PopupVerticalAlign="WindowCenter" HeaderText="Nuevo Evento"  AllowDragging="true"
                        PopupAnimationType="Slide" EnableViewState="false" runat="server" Height="421px"
                        Width="422px" Theme="Office2010Blue"> 

                        <ContentCollection>
                            <dx:PopupControlContentControl>
                               <dx:ASPxPanel ID="Panel1" runat="server" DefaultButton="ASPxbtnGuardar">
                               
                               <PanelCollection>
                               <dx:PanelContent runat="server">
                               <dx:ASPxFormLayout runat="server" ID="ASPxFormLayout1" Width="100%" Height="98%">
                               <Items> 
                               
                               <dx:LayoutItem Caption="Tipo Evento">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="TipoE" runat="server" Width="100%" 
                                   ClientInstanceName="tbTipoEvento" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" 
                                   Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Tipo de Evento Requerido" IsRequired="true" />
                           <RegularExpression ErrorText="Tipo Requerido" />
                           <ErrorFrameStyle Font-Size="10px">
                             <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>
                           </ValidationSettings>
                           </dx:ASPxComboBox> 
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem> 

                           <dx:LayoutItem Caption="Nombre del Evento">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="ASPxComboBoxNomEvent" runat="server" Width="100%" 
                                   ClientInstanceName="tbNombreEvento" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" 
                                   Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Nombre de Evento Requerido" IsRequired="true" />
                           <RegularExpression ErrorText="Nombre Requerido" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>
                           </ValidationSettings>
                           </dx:ASPxComboBox>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>

                            <dx:LayoutItem Caption="Fecha Inicio">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                               
                           <dx:ASPxDateEdit ID="ASPxDataEditFechaIn" runat="server" Width="100%" ClientInstanceName="tbFechaInicioEvento" EnableTheming="true" 
                           Font-Size="Small" Font-Bold="true" Font-Names="Book Antiqua" Theme="Office2010Blue">
                               <Buttons>
                                   <dx:EditButton Text="Seleccione Fecha Inicio">
                                   </dx:EditButton>
                               </Buttons>
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Fecha Requerida" IsRequired="true" />
                           <RegularExpression ErrorText="Fecha Inicio Requerida" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>

                           </ValidationSettings>
                           </dx:ASPxDateEdit>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>


                            <dx:LayoutItem Caption="Fecha Fin">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Width="100%" ClientInstanceName="tbFechaInicioEvento" EnableTheming="true" 
                           Font-Size="Small" Font-Bold="true" Font-Names="Book Antiqua" Theme="Office2010Blue">
                               <Buttons>
                                   <dx:EditButton Text="Seleccion Fecha Fin">
                                   </dx:EditButton>
                               </Buttons>
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Fecha Requerida" IsRequired="true" />
                           <RegularExpression ErrorText="Fecha Inicio Requerida" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>

                           </ValidationSettings>
                           </dx:ASPxDateEdit>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>

                           <dx:LayoutItem Caption="Duración">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                       <dx:ASPxTextBox ID="ASPxTextBoxDuracion" runat="server" Width="100%" Theme="Office2010Blue" ClientInstanceName="tbDuracion" ToolTip="Ingresa Duración">
                       <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                       <RequiredField ErrorText="Duración Requerida" IsRequired="True" />
                       <RegularExpression ErrorText="Duración Requerida" />
                       <ErrorFrameStyle Font-Size="10px">
                       <ErrorTextPaddings PaddingLeft="0px" />
                       </ErrorFrameStyle>
                       </ValidationSettings>
                        </dx:ASPxTextBox>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>
                               
                           <dx:LayoutItem Caption="Horas Diarias">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="ASPxComboBoxHoras" runat="server" Width="100%" 
                                   ClientInstanceName="tbHoras Diarias" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" 
                                   Theme="Office2010Blue">
                               <Items>
                                   <dx:ListEditItem Text="1" Value="0" />
                                   <dx:ListEditItem Text="2" Value="1" />
                                   <dx:ListEditItem Text="3" Value="2" />
                                   <dx:ListEditItem Text="4" Value="3" />
                                   <dx:ListEditItem Text="5" Value="4" />
                                   <dx:ListEditItem Text="6" Value="5" />
                                   <dx:ListEditItem Text="7" Value="6" />
                                   <dx:ListEditItem Text="8" Value="7" />
                                   <dx:ListEditItem Text="9" Value="8" />
                                   <dx:ListEditItem Text="10" Value="9" />
                               </Items>
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Horas Diarias Requeridas" IsRequired="true" />
                           <RegularExpression ErrorText="Horas Requeridas" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>
                           </ValidationSettings>
                           </dx:ASPxComboBox>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>

                           <dx:LayoutItem Caption="Lugar">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxComboBox ID="ASPxComboBoxLugar" runat="server" Width="100%" 
                                   ClientInstanceName="tbLugar" ValueType="System.String"
                           Font-Bold="True" Font-Names="Book Antiqua" Font-Size="Small" 
                                   Theme="Office2010Blue">
                               <ClearButton Visibility="True">
                               </ClearButton>
                           <ValidationSettings EnableCustomValidation="true" ValidationGroup="entryGroup" SetFocusOnError="true" ErrorDisplayMode="Text" 
                           ErrorTextPosition="Bottom" CausesValidation="true">
                           <RequiredField ErrorText="Lugar Requerido" IsRequired="true" />
                           <RegularExpression ErrorText="Lugar Requerido" />
                           <ErrorFrameStyle Font-Size="10px">
                           <ErrorTextPaddings PaddingLeft="0px" />
                           </ErrorFrameStyle>
                           </ValidationSettings>
                           </dx:ASPxComboBox>
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>

                           
                           <dx:LayoutItem Caption="Núm. de Asistentes">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxTextBox ID="ASPxTextBoxNumAsis" runat="server" Width="100%" Theme="Office2010Blue" ClientInstanceName="tbNumAsis" ToolTip="Ingresa Número de Asistentes">
                       <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True" ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                       <RequiredField ErrorText="Asistentes Requeridos" IsRequired="True" />
                       <RegularExpression ErrorText="Número de Asistentes Requeridos" />
                       <ErrorFrameStyle Font-Size="10px">
                       <ErrorTextPaddings PaddingLeft="0px" />
                       </ErrorFrameStyle>
                       </ValidationSettings>
                        </dx:ASPxTextBox>
                           <br />
                           </dx:LayoutItemNestedControlContainer>
                           </LayoutItemNestedControlCollection>
                           </dx:LayoutItem>


             <%--Aqui se especifica Los botones de buscar o cancelar--%>

                           <dx:LayoutItem ShowCaption="false">
                           <LayoutItemNestedControlCollection>
                           <dx:LayoutItemNestedControlContainer>
                           <dx:ASPxButton ID="ASPxbtnGuardar" runat="server" Text="Guardar" Width="80px" AutoPostBack="false" Style="float:Left; margin-right:8px" theme="Office2010Blue">
                           </dx:ASPxButton>

                           <dx:ASPxButton ID="ASPxbtnCancelar" runat="server" Text="Cancelar" Width="80px" AutoPostBack="False" Style="float: left; margin-right: 8px" theme="Office2010Blue">
                              </dx:ASPxButton>


                           <%-- %><dx:ASPxButton ID="ASPxbtnCancelar" runat="server" CssClass = "cancelButton" Text="Cancelar" Width="80px" AutoPostBack="false"  Style="float:right; margin-right:8px">
                               </dx:aspxbutton>
                               --%>
                        

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
