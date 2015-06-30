<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TechStore.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/bootstrap.css" rel="stylesheet" /> 
  <%--   <script src="js/jquery-2.1.3.js"></script>
     <script src="js/jquery-ui-1.11.4.js"></script>--%>

    <title>Tech Store</title>
</head>
<body >
     <header>
          <nav>
                <asp:Panel ID="nav" runat="server"></asp:Panel>
          </nav>
     </header>
    <div>
         <div class="box">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
                <form class="form-signin" runat="server" id ="IMG" >
                <asp:Image ID="Loogin" runat="server" ImageUrl="~/images/loogin.gif" Height="135px" Width="127px"/>
                <asp:TextBox ID="txtUsuario" type="text" class="form-control" placeholder="Email" runat="server" Width="430px" ></asp:TextBox>
                <asp:TextBox ID="txtPass" type="password" class="form-control" placeholder="Password" runat="server" Width="430px" ></asp:TextBox>
                <asp:Button  ID="btnIngresar" class="btn btn-lg btn-primary btn-block" type="submit" runat="server" Text="Sign in" OnClick="btnIngresar_Click"></asp:Button>
                    
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me"/>
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            <h1 class="text-center login-title"></h1>
            <div class="account-wall">                
            </div>
            <a href="#" class="text-center new-account">Create an account </a>
        </div>
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
      
    
</body>
</html>
