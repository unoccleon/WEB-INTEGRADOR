<%-- 
    Document   : index.jsp
    Created on : 29-abr-2022, 23:13:41
    Author     : JC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSTITUTO NACIONAL DE OFTALMOLOGIA</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
        <style>
            .bg{
                background-image: url(imagenes/login.png);
                background-position: center center;
            }
        </style>
    </head>
    <body>      
        <div class="container">
            <div class="row">
                <div class="col bg d-none d-lg-block">
                    
                </div>
                <div class="col">                  
                    <h2 class="fw-bold text-center py-5">Bienvenido</h2>
                    
                    <form action="legajo.jsp">
                        <div class="mb-4">
                            <label for="user" class="form-label">Usuario</label>
                            <input type="user" class="form-control" name="user">
                        </div>
                        <div class="mb-4">
                            <label for="password" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                        <div class="mb-4 form-check">
                            <input type="checkbox" name="connected" class="form-check-input">
                            <label for="connected" class="form-check-label">Mantenerme Conectado</label>
                        </div>
                        
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                        </div>
                        <div class="my-3">
                            <span><a href="#">Recuperar Password</a></span>
                        </div>
                        
                    </form>                   
                </div>
            </div>
        </div>
        
        
        
        
    </body>
</html>

