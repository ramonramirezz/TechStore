using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
namespace TechStore
{
     public class Menu
     {
         
          public Menu(Panel nav)
          {
               nav.Controls.Add(navbar());
          }

          public Literal navbar() {
               Literal nav = new Literal();

               
               if (Sesion.status)
               {
                   nav.Text = "<ul>"
                   +" <a href='index.aspx'><li>Inicio</li></a>"
                   +"  <a href='productos.aspx'><li>Productos</li></a>"
                   +" <a href='ofertas.aspx'><li>Ofertas</li></a>"
                   +"</ul>"
                   +"<img id='logo'  src='images/logoo.png' />"
              
                    +"<ul>"
                    +"<a href='carrito.aspx'><li>Carrito</li></a>"
                    +"<a href='contacto.aspx'><li>Contactanos</li></a>"
                    +" <a href='login.aspx'><li>Cerra Sesion</li></a>"
                    +" </ul>";
               }
               else
               {
                    nav.Text = "<ul>"
                    + " <a href='index.aspx'><li>Inicio</li></a>"
                    + "  <a href='productos.aspx'><li>Productos</li></a>"
                    + " <a href='ofertas.aspx'><li>Ofertas</li></a>"
                    + "</ul>"
                    + "<img id='logo'  src='images/logoo.png' />"

                     + "<ul>"
                     + "<a href='#'><li>Carrito</li></a>"
                     + "<a href='contacto.aspx'><li>Contactanos</li></a>"
                     + " <a href='login.aspx'><li>Login</li></a>"
                     + " </ul>";
               }
               return nav;
          }
     }
}