using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
namespace TechStore
{
   
     public partial class carrito : System.Web.UI.Page
     {
          Conexion conec = new Conexion();
          //DataTable dt = new DataTable();

          protected void Page_Load(object sender, EventArgs e)
          {
               Menu navbar = new Menu(nav);
              
               //if (!Page.IsPostBack)
               //{
               //dt = conec.Carrito();
               //GridView1.DataSource = dt;
               //GridView1.DataBind();
               //}
          }

          protected void btnBorrar_Click(object sender, EventArgs e)
          {
               var cont = (Control)sender;
               GridViewRow row = (GridViewRow)cont.NamingContainer;
              int idprod = Convert.ToInt32(row.Cells[0].Text);
               conec.BorrarCarrito(idprod);
               Response.Redirect("carrito.aspx");
          }

          protected void btnCalcular_Click(object sender, EventArgs e)
          {
               var cont = (Control)sender;
               GridViewRow row = (GridViewRow)cont.NamingContainer;
               TextBox cant = (TextBox)row.FindControl("txtCantidad");
               int cantidad = Convert.ToInt32(cant.Text);
               double precio = Convert.ToDouble(row.Cells[2].Text);

               TextBox txt = (TextBox)row.FindControl("txtTotal");
               txt.Text = (cantidad * precio).ToString();
          }

          protected void btnComprar_Click(object sender, EventArgs e)
          {
               var cont = (Control)sender;
               GridViewRow row = (GridViewRow)cont.NamingContainer;
               TextBox total = (TextBox)row.FindControl("txtTotal");
               if (total.Text == "")
               {
                    StringBuilder sbScript = new StringBuilder();
                    sbScript.Append("<script language='JavaScript' type='text/javascript'>");
                    sbScript.Append("alert('No has calculado el costo de tu porducto');");
                    sbScript.Append("</script>");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "@@@@MyCallBackAlertScript", sbScript.ToString(), false);
               }
               else
               {
               int idprod = Convert.ToInt32(row.Cells[0].Text);
               TextBox cant = (TextBox)row.FindControl("txtCantidad");
               int cantidad = Convert.ToInt32(cant.Text);
               conec.ActualizarStock(idprod, cantidad);
               Response.Redirect("carrito.aspx");
               }
          }

        

         


        

          

          

          

          
     }
}