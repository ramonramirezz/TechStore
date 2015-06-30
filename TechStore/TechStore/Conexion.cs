using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace TechStore
{
     public class Conexion
     {
          int userId = 0;
          public static string connectionString = ConfigurationManager.ConnectionStrings["PVIConnectionString"].ConnectionString;
          public static SqlConnection con ; 
          public SqlCommand cmd;
          public Conexion()
          {
              con = new SqlConnection(connectionString);
              con.Open();

          }
          public bool login(string usuario, string pass)
          {
               bool usu = false;    
             using (cmd = new SqlCommand("consula"))
             {
                  cmd.CommandType = CommandType.StoredProcedure;
                  cmd.Parameters.AddWithValue("@usu",usuario);
                  cmd.Parameters.AddWithValue("@pas", pass);
                  cmd.Connection = con;
                  //con.Open();
                  userId = Convert.ToInt32(cmd.ExecuteScalar());
             }
               switch(userId){
                    case 0: usu = false; break;

                    default: usu = true; Sesion.status = true; break;
               }
               return usu;
          }

          public DataTable Productos()
          {
               DataTable dt = new DataTable();
               using (con)
               {
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT * FROM productos where promocion = 'normal'", con);
                    ad.Fill(dt);
               }
               return dt;
          }
          public DataTable ProductosOff()
          {
               DataTable dt = new DataTable();
               using (con)
               {
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT * FROM productos where promocion = 'oferta'", con);
                    ad.Fill(dt);
               }
               return dt;
          }
          public void AddCar(int id, string nombre, double precio)
          {
               using (cmd = new SqlCommand("InsertarCarrito",con))
               {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idproducto", id);
                    cmd.Parameters.AddWithValue("@nombre", nombre);
                    cmd.Parameters.AddWithValue("@precio", precio);
                    //con.Open();
                    cmd.ExecuteNonQuery();
               }
          }
          public bool VerificarCarrito()
          {
               bool resp = false;
               using (con)
               {   
                    cmd = new SqlCommand("VerificarCarrito", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                   int id = Convert.ToInt32(cmd.ExecuteScalar());
                   switch(id){
                        case 0: resp = false; break;
                        default: resp = true; break;     
                   }
               }
               return resp;
          }

          public void BorrarCarrito(int idproducto)
          {
               using (cmd = new SqlCommand("BorrarCar",con))
               {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idProducto", idproducto);
                    //con.Open();
                    cmd.ExecuteNonQuery();
               }
          }

          public void ActualizarStock(int idproducto, int cantidad)
          {
               using (cmd = new SqlCommand("ActualizarStock", con))
               {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idProducto", idproducto);
                    cmd.Parameters.AddWithValue("@Cantidad", cantidad);
                    //con.Open();
                    cmd.ExecuteNonQuery();
               }
          }
     }
}