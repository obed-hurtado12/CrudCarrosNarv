
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath(); %>
<html>
<head>
    <title>Registro de Colores</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon"
          href="<%=context%>/assets/img/rayomcqueen.png"
          type="image/x-icon">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <ul class="navbar-nav" style="margin-left: 10px;">

        <li class="nav-item">
            <strong><a class="nav-link" href="<%=context%>/MarcaServlet">Listados de Carros</a></strong>
        </li>
    </ul>

    </div>
</nav>
<div class="container-fluid" ng-controller="inicioCtrl">
    <div class="row">
        <div class="col-12 col-sm-12">
            <section>
                <div class="card">
                    <figure class="text-center">
                        <br>
                        <img style="width: 75%; height: 450px; margin-bottom: 10px;"
                             src="https://e00-marca.uecdn.es/assets/multimedia/imagenes/2021/06/22/16243732114097.jpg"
                             class="card-img-top">
                    </figure>
                    <hr class="bg-warning">
                    <div class="card-body">
                        <form action="<%=context%>/MarcaServlet" method="post">
                            <div class="container">
                                <h3 class="text-center">Registro de Marcas:</h3>
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <label>Nombre de la Marca:</label>
                                            <input type="text" id="marca" name="marca"
                                                   class="form-control" required
                                                   minlength="2" maxlength="45">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <label>Ingrese el modelo:</label>
                                            <input type="text" id="modelo" name="modelo" class="form-control"
                                                   required minlength="2" maxlength="45">
                                        </div>
                                    </div>
                                </div>

                                <div class="row text-right" style="margin-top: 20px">
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-outline-success">Registrar</button>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </section>

        </div>

    </div>
</div>
<script>
    feather.replace()
</script>
</body>
</html>
