<%--
  Created by IntelliJ IDEA.
  User: oahh1
  Date: 20/8/2021
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath(); %>
<html>
<head>
    <title>Estudiantes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon"
          href="https://upload.wikimedia.org/wikipedia/commons/b/bc/Eucalyp-Deus_High_School.png"
          type="image/x-icon">
    <script src="https://unpkg.com/feather-icons"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <ul class="navbar-nav" style="margin-left: 10px;">
        <li>
            <img class="border-danger rounded-circle bg-light"
                 src="https://scontent.fcvj2-1.fna.fbcdn.net/v/t1.6435-9/238002018_1430787020610896_99147490818386699_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=qZdcIJIY95gAX9jdDI6&_nc_ht=scontent.fcvj2-1.fna&oh=26db135a75a47dbb1150d058112f3167&oe=61443B53"
                 width="60"
                 height="60"/>
        </li>
        <br>
        <li class="navbar-item">
            <a class="nav-link text-info">Obed Ariel Hurtado Hernandez</a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<%=context%>/ServletRedirectCreateStudent">Registro</a>
        </li>
    </ul>

    </div>
</nav>
<div class="container-fluid">
    <header>
        <h2><i data-feather="users" class="text-secondary"></i>Gestión de Jugadores</h2>
        <hr class="bg-secondary"/>
    </header>
    <div class="row">
        <div class="col-12 col-sm-10">
            <section>
                <div class="card">
                    <div class="card-header">
                        Estudiantes Registrados
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-hover table-dark table-striped">
                            <thead class="bg-secondary text-white">
                            <tr>
                                <td>#</td>
                                <td>Nombre completo</td>
                                <td>Escuela</td>
                                <td>Curso</td>
                                <td>Estado</td>
                                <td class="text-center">Modificar</td>
                                <td class="text-center">Deshabilitar</td>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${listStudent}" var="student" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${student.name}</td>
                                    <td>${student.school.nameSchool}</td>
                                    <td>${student.course.nameCourse}</td>
                                    <td>${student.state}</td>

                                    <td class="text-center">
                                        <form method="get" action="<%=context%>/ServletUpdateStudent">
                                            <input type="hidden" name="id" value="${student.idStudent}">
                                            <button title="Modificar" type="submit"  class="btn btn-outline-warning"><i
                                                    data-feather="edit"></i></button>
                                        </form>
                                    </td>

                                    <td class="text-center">
                                        <form method="post" action="<%=context%>/ServletStatusStudent">
                                            <input type="hidden" name="id"value="${student.idStudent}">
                                            <button title="Eliminar" class="btn btn-outline-danger"><i
                                                    data-feather="refresh-ccw"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
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
