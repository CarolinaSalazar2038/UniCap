<%@ Page Language="VB" AutoEventWireup="false" CodeFile="area.aspx.vb" Inherits="area" %>
      <%----%>
<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reporte de area</title>
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
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/SeccionReportes.aspx" Text="Regresar"/>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div class="main">
         <%--Titulo de la Página--%>
            <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxLabel1" 
                Font-Bold="True" Font-Names="Book Antiqua" Font-Size="X-Large" 
                ForeColor="Black" 
                style="z-index: 1; left: 705px; top: 36px; position: absolute; width: 237px;" 
                Text="Área" Theme="Office2010Black">
            </dx:ASPxLabel>
             
             <%--Tabla en donde se mostrara los datos dependiendo del criterio de busqueda del ComboBox--%>
            
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="ASPxGridView1" AutoGenerateColumns="False" EnableTheming="True" 
                style="z-index: 1; left: 421px; top: 191px; position: absolute; height: 161px; width: 794px" 
                Theme="Office2010Blue" DataSourceID="SqlDataSource1" KeyFieldName="IdArea">
                <Columns>
                <dx:GridViewDataTextColumn FieldName="IdArea" ReadOnly="True" VisibleIndex="0" > 
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                    </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Area" VisibleIndex="1"> 
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                    </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Usuario" VisibleIndex="2"> 
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewCommandColumn ButtonType="Button" ShowDeleteButton="True" 
                        ShowEditButton="True" VisibleIndex="3">
                        <HeaderStyle HorizontalAlign="Center" />
                    </dx:GridViewCommandColumn>
                </Columns>
           </dx:ASPxGridView>
     
       <%--Conexion de datos SQL para llenar el gridView--%> 
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            SelectCommand="SELECT [IdArea], [Area], [Usuario] FROM [CatArea]" 
            ConnectionString="<%$ ConnectionStrings:UcapacitacionConnectionString455 %>" 
                ConflictDetection="CompareAllValues"  
                DeleteCommand="DELETE FROM [CatArea] WHERE [IdArea] = @original_IdArea AND (([Area] = @original_Area) OR ([Area] IS NULL AND @original_Area IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL))" 
                InsertCommand="INSERT INTO [CatArea] ([IdArea], [Area], [Usuario]) VALUES (@IdArea, @Area, @Usuario)" 
                OldValuesParameterFormatString="original_{0}" 
                UpdateCommand="UPDATE [CatArea] SET [Area] = @Area, [Usuario] = @Usuario WHERE [IdArea] = @original_IdArea AND (([Area] = @original_Area) OR ([Area] IS NULL AND @original_Area IS NULL)) AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL))" >
                <DeleteParameters>
                    <asp:Parameter Name="original_IdArea" Type="Int32" />
                    <asp:Parameter Name="original_Area" Type="String" />
                    <asp:Parameter Name="original_Usuario" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IdArea" Type="Int32" />
                    <asp:Parameter Name="Area" Type="String" />
                    <asp:Parameter Name="Usuario" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Area" Type="String" />
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="original_IdArea" Type="Int32" />
                    <asp:Parameter Name="original_Area" Type="String" />
                    <asp:Parameter Name="original_Usuario" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
        </div>     
    </div>

<%--Botón que cumplira la función de imprimir la información de la tabla--%>
            <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Bold="True" 
                Font-Italic="True" Font-Names="Book Antiqua" Font-Size="Medium" 
                style="z-index: 1; left: 1294px; top: 258px; position: absolute" Text="Imprimir" 
                Theme="Office2010Blue">
            </dx:ASPxButton>

<%--Codigo Para Exportar El GridView a PDF--%>
    <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" 
            GridViewID="ASPxGridView1" FileName="Reporte Área" Landscape="True" 
            BottomMargin="5" DetailHorizontalOffset="50" DetailVerticalOffset="50" 
            LeftMargin="5">
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
        <PageHeader Center="Reporte de Catalogo de Areas
" Left="[Date Printed]" Right="[Time Printed]">
            <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
        </PageHeader>
        <PageFooter Left="Fiscalía General Del Estado de Sinaloa" Right="[Page #]">
            <Font Bold="True" Names="Book Antiqua" Size="Medium"></Font>
        </PageFooter>
    </dx:ASPxGridViewExporter>


    <div class="footer">
        
    </div>
    </div>
    </form>
</body>
</html>