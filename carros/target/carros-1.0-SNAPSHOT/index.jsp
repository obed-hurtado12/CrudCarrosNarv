<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String context = request.getContextPath();%>

<!DOCTYPE html>
<html>
<head>
    <title>Registro Principal</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12 col-sm-10 col-md-10">
            <section id="createMarca">
                <div class="card">
                    <img src="<%=context%>/assets/img/iconPlus.jpg" class="card-img-top" style="height: 300px !important; width: 55%" alt="RegistroMarca-carros">
                    <hr class="bg-warning">
                    <div class="card-body">
                        <form action="<%=context%>/MarcaServlet" method="post">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-4">
                                        <div class="form-group">
                                            <label>Nombre Marca:</label>
                                            <input type="text" id="marca" name="marca" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-4">
                                        <div class="form-group">
                                            <label>Modelo (Año):</label>
                                            <input type="text" id="modelo" name="modelo" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-12 col-sm-2">
            <div class="card" style="width: 18rem">
                <div class="card-header">
                    Acciones
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="##createMarca">Registro de Marcas</a></li>
                    <li class="list-group-item">An second item</li>
                    <li class="list-group-item">An third item</li>
                </ul>
            </div>
        </div>
    </div>

</div>




</body>
</html>