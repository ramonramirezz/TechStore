<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="TechStore.contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/stylecontacto.css" rel="stylesheet" />
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
    </div>
         <section id="formulario">        
		<p id="titulo">Tech Store</p>
        
		
			 <asp:TextBox ID="nombre" placeholder="Nombre" runat="server" required autofocus></asp:TextBox>
                 &nbsp;<asp:TextBox ID="apellido" placeholder="Apellido" runat="server" required autofocus></asp:TextBox>
            <asp:TextBox ID="mail" placeholder="Email" runat="server" required autofocus></asp:TextBox>
                 &nbsp;
			&nbsp;
            <asp:TextBox ID="password" class="form-control" TextMode="Password" placeholder="Password" runat="server" Width="205px" Height="23px" required autofocus></asp:TextBox>
            <asp:TextBox ID="comentario" placeholder="Comentario" runat="server" TextMode="MultiLine" required autofocus></asp:TextBox>
            <asp:Button ID="enviar" class="btn btn-lg btn-primary btn-block" placeholder="Comentario" runat="server" Text="Enviar" OnClick="enviar_Click" Width="153px" />
		       
	</section>  
<%--         <footer>
          <h1>Pagina desarrollada por Ramon y Alan</h1>
     </footer>--%>
    </form>
</body>
</html>
