package com.cafetera.dao;

import com.cafetera.model.Productor;
import java.sql.*;
import java.util.*;

public class ProductorDAO {
    public List<Productor> listar() throws SQLException {
        List<Productor> lista = new ArrayList<>();
        Connection conn = DBConnection.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM productores");
        while (rs.next()) {
            Productor p = new Productor();
            p.setIdProductor(rs.getInt("id_productor"));
            p.setNombre(rs.getString("nombre"));
            p.setUbicacion(rs.getString("ubicacion"));
            p.setTipoCafe(rs.getString("tipo_cafe"));
            p.setCertificaciones(rs.getString("certificaciones"));
            p.setFechaRegistro(rs.getTimestamp("fecha_registro"));
            lista.add(p);
        }
        rs.close(); stmt.close(); conn.close();
        return lista;
    }

    public void crear(Productor p) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO productores (nombre, ubicacion, tipo_cafe, certificaciones, fecha_registro) VALUES (?, ?, ?, ?, ?)");
        ps.setString(1, p.getNombre());
        ps.setString(2, p.getUbicacion());
        ps.setString(3, p.getTipoCafe());
        ps.setString(4, p.getCertificaciones());
        ps.setTimestamp(5, p.getFechaRegistro());
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public void actualizar(Productor p) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(
            "UPDATE productores SET nombre=?, ubicacion=?, tipo_cafe=?, certificaciones=?, fecha_registro=? WHERE id_productor=?");
        ps.setString(1, p.getNombre());
        ps.setString(2, p.getUbicacion());
        ps.setString(3, p.getTipoCafe());
        ps.setString(4, p.getCertificaciones());
        ps.setTimestamp(5, p.getFechaRegistro());
        ps.setInt(6, p.getIdProductor());
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public void eliminar(int idProductor) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("DELETE FROM productores WHERE id_productor=?");
        ps.setInt(1, idProductor);
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public Productor buscarPorId(int idProductor) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM productores WHERE id_productor=?");
        ps.setInt(1, idProductor);
        ResultSet rs = ps.executeQuery();
        Productor p = null;
        if (rs.next()) {
            p = new Productor();
            p.setIdProductor(rs.getInt("id_productor"));
            p.setNombre(rs.getString("nombre"));
            p.setUbicacion(rs.getString("ubicacion"));
            p.setTipoCafe(rs.getString("tipo_cafe"));
            p.setCertificaciones(rs.getString("certificaciones"));
            p.setFechaRegistro(rs.getTimestamp("fecha_registro"));
        }
        rs.close(); ps.close(); conn.close();
        return p;
    }
}