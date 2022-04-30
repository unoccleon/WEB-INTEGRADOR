<%-- 
    Document   : nuevo_personal.jsp
    Created on : 29-abr-2022, 23:53:47
    Author     : JC
--%>
<%@page import="beans.Personal"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
        <style>
            .bg{
                background-image: url(imagenes/julio_unocc.png);
                background-position: center center;
            }
        </style>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">
              <a class="navbar-brand" href="legajo.jsp"><img src="imagenes/logo.png" alt="" width="200"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Legajo
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <li><a class="dropdown-item" href="nuevo_personal.jsp">Nuevo Personal</a></li>
                      <li><a class="dropdown-item" href="ServletCRUD?op=listar">Buscar Personal</a></li>
                    </ul>
                  </li>               
                  <li class="nav-item">
                    <a class="nav-link" href="#">Capacitacion</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Evaluacion</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Cerrar Sesion</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>
        
        <h2 align="center">AGREGAR NUEVO PERSONAL</h2>
        
        <div class="container">
            <form action="ServletCRUD">
                <table class="table">
                    <tr>
                        <td>Codigo: </td>
                        <td><input type="text" name="txtId" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Primer Nombre: </td>
                        <td><input type="text" name="txtNom1" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Segundo Nombre: </td>
                        <td><input type="text" name="txtNom2" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Apellido Paterno: </td>
                        <td><input type="text" name="txtPat" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Apellido Materno: </td>
                        <td><input type="text" name="txtMat" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Fecha de Nacimiento: </td>
                        <td><input type="text" name="txtFecha" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Sexo: </td>
                        <td><input type="text" name="txtSexo" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Telefono: </td>
                        <td><input type="text" name="txtTel" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Correo: </td>
                        <td><input type="text" name="txtCorreo" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Estado Civil: </td>
                        <td><input type="text" name="txtEstado" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Nombre del Padre </td>
                        <td><input type="text" name="txtNomP" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Nombre de la Madre </td>
                        <td><input type="text" name="txtNomM" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Numero de Hijos: </td>
                        <td><input type="text" name="txtHijos" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Area </td>
                        <td><input type="text" name="txtArea" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Puesto: </td>
                        <td><input type="text" name="txtPuesto" class="form-control"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="Grabar datos" value="Guardar" class="btn btn-primary"></td>
                    </tr>
                </table>
                
                <input type="hidden" name="op" value="nuevo">
                
            </form>
        </div>
        
    </body>
</html>

