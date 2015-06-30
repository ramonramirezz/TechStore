<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ofertas.aspx.cs" Inherits="TechStore.ofertas" %>

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
         <div class="contenedor">
              <asp:DataList ID="DataList1" runat="server" DataKeyField="idProducto"  RepeatColumns="5" style="margin-left:auto;margin-right:auto;padding-top:39px;" OnItemCommand="DataList1_ItemCommand">
                   <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="142px" Width="140px" ImageUrl='<%# Eval("foto") %>' />
                        <br />
                        &nbsp;<asp:Label ID="idProductoLabel" runat="server" Text='<%# Eval("idProducto") %>'  Visible="False"/>
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
                        promocion:
                        <asp:Label ID="promocionLabel" runat="server" Text='<%# Eval("promocion") %>' />
                        <br />
                        <asp:Button ID="btnCarriro" class="btn btn-lg btn-primary btn-block" runat="server" Height="47px" Text="Carrito" Width="138px" CommandName="call"/>
                        <br />
                   </ItemTemplate>
              </asp:DataList>
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
