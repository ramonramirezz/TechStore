using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechStore
{
     public partial class index : System.Web.UI.Page
     {
          protected void Page_Load(object sender, EventArgs e)
          {
               Menu navbar = new Menu(nav);
          }

          protected void conectar_Click(object sender, EventArgs e)
          {
               //Conexion obj = new Conexion();
               //obj.ObtenerConexion();
               
          }
     }
}