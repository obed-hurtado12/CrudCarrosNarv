package com.utez.edu.mx.carros.dao;

import com.utez.edu.mx.carros.modelo.Marca;
import com.utez.edu.mx.carros.util.ConnectionMysql;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoMarca {
    Connection con;
    PreparedStatement pstm;
    Statement statement;
    ResultSet rs;

    public boolean createNewMarca (Marca marca){
        boolean state = false;
        try{
            con = ConnectionMysql.getConnection();
            String query = "INSERT INTO marca (marca.marca, marca.modelo) values (?,?);";
            pstm = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1, marca.getMarca());
            pstm.setString(2, marca.getModelo());
            state = pstm.executeUpdate() == 1;
            rs = pstm.getGeneratedKeys();
        }catch (SQLException ex){
            System.out.println("No se pudo realizar el registro..!!!");
            ex.printStackTrace();
        }finally{
            closeConnection();
        }
        return state;
    }

    public boolean modifyMarca(Marca marca){
        boolean state = false;
        try {
            con = ConnectionMysql.getConnection();
            String query = "UPDATE marca SET marca = ?, modelo = ? where marca.id = ?;";
            pstm = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            pstm.setString(1,marca.getMarca());
            pstm.setString(2, marca.getModelo());
            state = pstm.executeUpdate() == 1;
            rs = pstm.getGeneratedKeys();

        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
        return state;
    }

    public boolean deleteMarca (int id){
        boolean state = false;
        try {
            con = ConnectionMysql.getConnection();
            String query = "DELETE FROM marca WHERE marca.id = ?;";
            pstm = con.prepareStatement(query);
            pstm.setInt(1,id);
            state = pstm.executeUpdate() == 1;

        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
        return state;
    }

    public List<Marca> findAll(){
        List<Marca> listMarca = new ArrayList();
        try{
            con= ConnectionMysql.getConnection();
            String query="SELECT * FROM marca;";
            pstm = con.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()){
                Marca marcaob = new Marca();
                marcaob.setId(rs.getInt("id"));
                marcaob.setMarca(rs.getString("marca"));
                marcaob.setModelo(rs.getString("modelo"));
                listMarca.add(marcaob);
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
        return listMarca;
    }


    public void closeConnection() {
        try{
            if (con != null){
                con.close();
            }
            if (pstm != null){
                pstm.close();
            }
            if (rs != null){
                rs.close();
            }
            if (statement != null){
                statement.close();
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }
    }
}
