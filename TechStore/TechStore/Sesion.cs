using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechStore
{
     public class Sesion
     {
          public static bool _status;

          public static bool status{
          
               get{return _status;}
               set { _status = value;}                    
          }
     }
}