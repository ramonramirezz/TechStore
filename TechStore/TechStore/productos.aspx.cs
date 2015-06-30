using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace TechStore
{
     public partial class productos : System.Web.UI.Page
     {
          public int idProducto;
          public string nombre;
          public double precio;


          Conexion conec = new Conexion();
          DataTable dt = new DataTable();
          protected void Page_Load(object sender, EventArgs e)
          {
               Menu navbar = new Menu(nav);
               if (!Page.IsPostBack)
               {
                    dt = conec.Productos();
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
               }
               
          }

          protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
          {
               if (Sesion.status)
               {
                    if (e.CommandName == "call")
                    {
                         DataListItem item = (DataListItem)(((Button)(e.CommandSource)).NamingContainer);
                         nombre = ((Label)item.FindControl("descripcion")).Text;
                         precio = Convert.ToDouble(((Label)item.FindControl("precioLabel")).Text);
                         idProducto = Convert.ToInt32(((Label)item.FindControl("idProductoLabel")).Text);
                         conec.AddCar(idProducto, nombre, precio);
                         item.Enabled = false;//Checar que cuando realmente se hiso la compra se habilite de nuevo ponerlo global
                    }
               }
               else
               {
                    StringBuilder sbScript = new StringBuilder();
                    sbScript.Append("<script language='JavaScript' type='text/javascript'>");
                    sbScript.Append("alert('No has iniciado sesion');window.location='./productos.aspx'");
                    sbScript.Append("</script>");
                    // Con el ScriptManager registramos el script anterior.
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "@@@@MyCallBackAlertScript", sbScript.ToString(), false);
               }

          }

     }
}