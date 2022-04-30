<%-- 
    Document   : legajo.jsp
    Created on : 29-abr-2022, 23:18:35
    Author     : JC
--%>

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
        
        <div class="container">
            <div class="row">
                <div class="col bg d-none d-lg-block ">
                    
                </div>
                <div class="col">
                    <div class="text-end">
                        <label for="user" class="form-label">Julio Unocc</label>
                    </div>
                    
                    <h2 class="fw-bold text-center py-5">DATOS DEL USUARIO</h2>
                    <table class="table">
                        <tr>
                            <td>Nombres: </td>
                            <td>Julio Cesar</td>
                        </tr>
                        <tr>
                            <td>Apellidos: </td>
                            <td>Unocc Leon</td>
                        </tr>
                        <tr>
                            <td>Usuario: </td>
                            <td>junocc</td>
                        </tr>
                        <tr>
                            <td>DNI: </td>
                            <td>42915988</td>
                        </tr>
                        <tr>
                            <td>Celular: </td>
                            <td>993677888</td>
                        </tr>
                        <tr>
                            <td>Area: </td>
                            <td>Tecnologia de la Informacion</td>
                        </tr>
                    </table>                           
                        
                    </form>                    
                </div>
            </div>
        </div>
        
    </body>
</html>
