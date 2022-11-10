﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="tareaprog14._default" %>
Inherits="Proyecto._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Home</title>
    <link rel ="stylesheet " href="Style.css" />
    <link rel="shorcut icon" href="images/icono.ico"/>
  <script type="text/javascript">
</script>
</head>
<body>
<nav>
  <div class="logo">
      <h4>Registro</h4>
  </div>
  <ul class="nav-links"> 
      <a href="logout.aspx">Cerrar Sesión</a>
      <a href="default.aspx">Home</a>
      <a href="Registros.aspx">Registro</a> 
      <a href="Consultas.aspx">Consultar</a>
  </ul>
  <div class="burger">
    <div class="line1"></div>
    <div class="line2"></div>
    <div class="line3"></div>
  </div>
</nav>
    <br><br><br>
    <div class="reg">

        <center><h3>Registro de usuarios</h3></center>
        <form id="form1" runat="server">
            <center>

               Código:
    <asp:TextBox id="id" Text="" runat="server" />
    <br /><br />
    
    Nombre:
    <asp:TextBox id="nombre" Text="" runat="server" />
    <br /><br />

    Usuario:
    <asp:TextBox id="usuarioreg" Text="" runat="server" />
    <br /><br />

    Contraseña:
    <asp:TextBox id="passwordreg" Text="" runat="server" />
    <br /><br />

    Rango:
    <asp:TextBox id="rango" Text="" runat="server" />
    <br /><br />

    <asp:Button id="registrar" Text="Registrar" runat="server" /></center>

            </form>
        </div>
</body>
</html>



