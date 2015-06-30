<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="TechStore.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <header>
          <nav>
                <asp:Panel ID="nav" runat="server"></asp:Panel>
          </nav>
     </header>
         <div class ="contenedor" >

              <br />
              <asp:DataList ID="DataList1" runat="server" DataKeyField="idProducto"  Height="344px" RepeatColumns="4" Width="845px" OnItemCommand="DataList1_ItemCommand" style="margin-left:auto;margin-right:auto;" >
                   <ItemTemplate>
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl='<%# Eval("foto") %>' Width="136px" />
                        <br />
                        <br />
                        &nbsp;<asp:Label ID="idProductoLabel" runat="server" Text='<%# Eval("idProducto") %>' Visible="False" />
                        <br />
                        descripcion:
                        <asp:Label ID="descripcion" runat="server" Text='<%# Eval("descripcion") %>' />
                        <br />
                        precio:
                        <asp:Label ID="precioLabel" runat="server" Text='<%# Eval("precio") %>' />
                        <br />
                        cantidad:
                        <asp:Label ID="cantidadLabel" runat="server" Text='<%# Eval("cantidad") %>' />
                        <br />
                        <br />
                        <asp:Button ID="btnCarrito" class="btn btn-lg btn-primary btn-block" runat="server" Height="47px" Text="Carrito" Width="144px" CommandName="call" />
<br />
                   </ItemTemplate>
              </asp:DataList>
              <br />
              <br />
              <br />
         </div>
    </div>
    </form>
         <footer>
             <%-- <h1>@Tech Store</h1>--%>
              <div class="Down">
                   <h1>@Tech Store</h1>
              </div>
              <a href="https://www.facebook.com/grupo.sonne.5?fref=ts" target="blank"><img src="images/faceIcon.png" /> </a>
              <a href="https://twitter.com/quierobarato" target="blank"><img src="images/twett.png" /> </a>
     </footer>
    </body>
</html>
