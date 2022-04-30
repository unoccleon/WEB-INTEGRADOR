<%-- 
    Document   : buscar_personal.jsp
    Created on : 29-abr-2022, 23:53:58
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
        
        <h2 align="center">Listado de Empleados</h2>
        
        <div class="container">
            <table class="table">
                <tr>
                    <th>Codigo</th>
                    <th>Primer Nombre</th>
                    <th>Segundo Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Sexo</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>Estado Civil</th>
                    <th>Nombre del Papa</th>
                    <th>Nombre de la Mama</th>
                    <th>Numero de Hijos</th>
                    <th>Area</th>
                    <th>Puesto</th>
                </tr>
                
                <%
                    ArrayList<Personal> lista=(ArrayList<Personal>)request.getAttribute("lista");
                    
                    for(int i=0;i<lista.size();i++){
                        Personal e=lista.get(i);
                        %>
                            
                        <tr>
                            <td><%=e.getIdpersonal()%></td>
                            <td><%=e.getPer_nombre1()%></td>
                            <td><%=e.getPer_nombre2()%></td>
                            <td><%=e.getPer_ape_paterno()%></td>
                            <td><%=e.getPer_ape_materno()%></td>
                            <td><%=e.getPer_fec_nac()%></td>
                            <td><%=e.getPer_sexo()%></td>
                            <td><%=e.getPer_tel()%></td>
                            <td><%=e.getPer_correo()%></td>
                            <td><%=e.getPer_estadocivil()%></td>
                            <td><%=e.getPer_nompapa()%></td>
                            <td><%=e.getPer_nommama()%></td>
                            <td><%=e.getPer_numhijos()%></td>
                            <td><%=e.getPer_area()%></td>
                            <td><%=e.getPer_puesto()%></td>
                        </tr>
                        <%
                    }

                %>
                              
            </table>
        </div>
        
    </body>
</html>
