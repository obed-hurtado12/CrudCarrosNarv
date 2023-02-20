package com.utez.edu.mx.carros.controlador;

import com.utez.edu.mx.carros.dao.DaoMarca;
import com.utez.edu.mx.carros.modelo.Marca;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "MarcaServlet", value = "/MarcaServlet")
public class MarcaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DaoMarca dao = new DaoMarca();
        Marca marca = new Marca();

        marca.setMarca(request.getParameter("marca"));
        System.out.println("SI LLEGÓ");
        System.out.println(request.getParameter("marca"));
        marca.setModelo(request.getParameter("modelo"));
        System.out.println("SI LLEGÓ");
        System.out.println(request.getParameter("modelo"));

        if (dao.createNewMarca(marca)){
            request.setAttribute("message", "Marca registrada");
        }else{
            request.setAttribute("message", "Error al registrar");
        }
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String marcaId = request.getParameter("id");
        if (marcaId != null) {
            int id = Integer.parseInt(marcaId);
            request.setAttribute("marca", new DaoMarca().deleteMarca(id));
            request.getRequestDispatcher("/WEB-INF/vistas/MarcaVista.jsp").forward(request,response);
        } else {
            request.setAttribute("listMarca", new DaoMarca().findAll());
            request.getRequestDispatcher("/WEB-INF/vistas/MarcaVista.jsp").forward(request,response);
        }
    }
}
