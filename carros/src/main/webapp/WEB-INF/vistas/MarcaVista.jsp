<%--
  Created by IntelliJ IDEA.
  User: oahh1
  Date: 30/8/2021
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>

<html>
<head>
    <title>Colores</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon"
          href="https://s1.significados.com/foto/f2e4-rgb-circulo-cromatico.png"
          type="image/x-icon">
    <script src="https://unpkg.com/feather-icons"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <ul class="navbar-nav" style="margin-left: 10px;">

        <li class="nav-item">
            <a class="nav-link" href="<%=context%>/ServletRedirectRegisterColors">Registro de MARCAS</a>
        </li>
    </ul>

    </div>
</nav>
<div class="container-fluid">
    <header>
        <h2><i data-feather="users" class="text-secondary"></i>Gestión de Marcas</h2>
        <hr class="bg-secondary"/>
    </header>
    <div class="row">
        <div class="col-12 col-sm-10">
            <section>
                <div class="card">
                    <div class="card-header">
                        Colores Registrados
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover table-dark table-striped">
                            <thead class="bg-secondary text-white">
                            <tr>
                                <td>#</td>
                                <td>Marca</td>
                                <td>Modelo</td>
                                <td class="text-center">Modificar</td>
                                <td class="text-center">Eliminar</td>
                            </tr>
                            </thead>
                        </table>
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
