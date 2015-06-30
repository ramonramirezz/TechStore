<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="index.aspx.cs" Inherits="TechStore.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/Style.css" rel="stylesheet" />
     <script src="js/jquery-2.1.3.js"></script>
     <script src="js/script.js"></script>
    <title>Tech Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header>
          <nav>
               <asp:Panel ID="nav" runat="server"></asp:Panel>
               <%--<ul>
                    <a href="index.aspx"><li>Inicio</li></a>
                    <a href="productos.aspx"><li>Productos</li></a>
                    <a href="ofertas.aspx"><li>Ofertas</li></a>
               </ul>
               <img id="logo"  src="images/logoo.png" />
              
               <ul>
                    <a href="carrito.aspx"><li>Carrito</li></a>
                    <a href="contacto.aspx"><li>Contactanos</li></a>
                    <a href="login.aspx"><li>Login</li></a>
               </ul>--%>
          </nav>
     </header>
     <section id="fondo"></section>
     <div id="box">
          <div id="box-imagen">
               <div><img src="images/beats.jpg" /></div>
               <div><img src="images/beats2.jpg" /></div>
               <div><img src="images/iphone.jpg" /></div>
               <div><img src="images/nexus6.jpg" /></div>             
          </div>
     </div>
     <footer>
         <div class="Down">
                   <h1>@Tech Store</h1>
              </div>
              <a href="https://www.facebook.com/grupo.sonne.5?fref=ts" target="blank"><img src="images/faceIcon.png" /> </a>
              <a href="https://twitter.com/quierobarato" target="blank"><img src="images/twett.png" /> </a>
     </footer>


    </div>
    </form>
</body>
</html>
