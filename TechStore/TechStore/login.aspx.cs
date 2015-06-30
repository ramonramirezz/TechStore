using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace TechStore
{
     public partial class login : System.Web.UI.Page
     {
          
          protected void Page_Load(object sender, EventArgs e)
          {
               Sesion.status = false;
               Menu navbar = new Menu(nav);
              
          }

          protected void btnIngresar_Click(object sender, EventArgs e)
          {
               Conexion log = new Conexion();
               bool res = log.login(txtUsuario.Text, txtPass.Text);
               if (res)
               {
                    Response.Redirect("index.aspx");
               }
               else
               {

                    //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>"
                    //+ " $(function mostrar() {"
                    //+ " $('#dialog').dialog();"
                    //+ "  });</script>", false);
                    StringBuilder sbScript = new StringBuilder();
                    sbScript.Append("<script language='JavaScript' type='text/javascript'>");
                    sbScript.Append("alert('Error en Usuario/Contraseña');window.location='./login.aspx'");
                    sbScript.Append("</script>");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "@@@@MyCallBackAlertScript", sbScript.ToString(), false);
               }
                            
          }
     }
}