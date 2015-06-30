<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="TechStore.carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/bootstrap.css" rel="stylesheet" />
    <title></title>
     <style type="text/css">
          .Contenedor {
               height: 467px;
          }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <header>
          <nav>
               <asp:Panel ID="nav" runat="server"></asp:Panel>
          </nav>
     </header>
         <div class =" Contenedor">

              <asp:GridView ID="GridView1" class="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto"  Height="137px" Width="380px" DataSourceID="SqlDataSource1" BorderStyle="Inset" BackColor="Black" style="margin-left:auto;margin-right:auto;" >
                   <Columns>
                        <asp:BoundField DataField="idProducto" HeaderText="idProducto" ReadOnly="True" SortExpression="idProducto" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                        <asp:TemplateField HeaderText="Cantidad">
                             <ItemTemplate>
                                  <asp:TextBox ID="txtCantidad" class="form-control" runat="server" Height="35px" Width="135px" Text="1" TextMode="SingleLine"></asp:TextBox>
                             </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="$ Total">
                             <ItemTemplate>
                                  <asp:TextBox ID="txtTotal" class="form-control" runat="server" Height="35px" Width="68px"></asp:TextBox>
                             </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                             <ItemTemplate>
                                  <asp:Button ID="btnBorrar" class="btn btn-lg btn-primary btn-block" runat="server" Height="41px" Text="Borrar" Width="98px" CommandName="seleccionar" OnClick="btnBorrar_Click"/>
                             </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                             <ItemTemplate>
                                  <asp:Button ID="btnCalcular" class="btn btn-lg btn-primary" runat="server" Height="41px" Text="Calcular" Width="101px" OnClick="btnCalcular_Click" />
                             </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                             <ItemTemplate>
                                  <asp:Button ID="btnComprar" class="btn btn-lg btn-primary btn-block" runat="server" Height="41px" Text="Comprar" Width="111px" OnClick="btnComprar_Click" />
                             </ItemTemplate>
                        </asp:TemplateField>
                   </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PVIConnectionString %>" SelectCommand="SELECT * FROM [Car]"></asp:SqlDataSource>

         </div>
    </div>
         <footer>
         <div class="Down">
                   <h1>@Tech Store</h1>
              </div>
              <a href="https://www.facebook.com/grupo.sonne.5?fref=ts" target="blank"><img src="images/faceIcon.png" /> </a>
              <a href="https://twitter.com/quierobarato" target="blank"><img src="images/twett.png" /> </a>
     </footer>
    </form>
</body>
</html>
