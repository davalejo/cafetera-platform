package com.cafetera.dao;

import com.cafetera.model.Pedido;
import java.sql.*;
import java.util.*;

public class PedidoDAO {
    public List<Pedido> listar() throws SQLException {
        List<Pedido> lista = new ArrayList<>();
        Connection conn = DBConnection.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM pedidos");
        while (rs.next()) {
            Pedido p = new Pedido();
            p.setIdPedido(rs.getInt("id_pedido"));
            p.setIdProductor(rs.getInt("id_productor"));
            p.setClienteNombre(rs.getString("cliente_nombre"));
            p.setProductoCafe(rs.getString("producto_cafe"));
            p.setCantidadKg(rs.getDouble("cantidad_kg"));
            p.setPrecioUnitario(rs.getDouble("precio_unitario"));
            p.setTotalPrecio(rs.getDouble("total_precio"));
            p.setFechaPedido(rs.getTimestamp("fecha_pedido"));
            p.setEstadoPedido(rs.getString("estado_pedido"));
            lista.add(p);
        }
        rs.close(); stmt.close(); conn.close();
        return lista;
    }

    public void crear(Pedido p) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO pedidos (id_productor, cliente_nombre, producto_cafe, cantidad_kg, precio_unitario, total_precio, fecha_pedido, estado_pedido) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        ps.setInt(1, p.getIdProductor());
        ps.setString(2, p.getClienteNombre());
        ps.setString(3, p.getProductoCafe());
        ps.setDouble(4, p.getCantidadKg());
        ps.setDouble(5, p.getPrecioUnitario());
        ps.setDouble(6, p.getTotalPrecio());
        ps.setTimestamp(7, p.getFechaPedido());
        ps.setString(8, p.getEstadoPedido());
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public void actualizar(Pedido p) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement(
            "UPDATE pedidos SET id_productor=?, cliente_nombre=?, producto_cafe=?, cantidad_kg=?, precio_unitario=?, total_precio=?, fecha_pedido=?, estado_pedido=? WHERE id_pedido=?");
        ps.setInt(1, p.getIdProductor());
        ps.setString(2, p.getClienteNombre());
        ps.setString(3, p.getProductoCafe());
        ps.setDouble(4, p.getCantidadKg());
        ps.setDouble(5, p.getPrecioUnitario());
        ps.setDouble(6, p.getTotalPrecio());
        ps.setTimestamp(7, p.getFechaPedido());
        ps.setString(8, p.getEstadoPedido());
        ps.setInt(9, p.getIdPedido());
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public void eliminar(int idPedido) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("DELETE FROM pedidos WHERE id_pedido=?");
        ps.setInt(1, idPedido);
        ps.executeUpdate();
        ps.close(); conn.close();
    }

    public Pedido buscarPorId(int idPedido) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM pedidos WHERE id_pedido=?");
        ps.setInt(1, idPedido);
        ResultSet rs = ps.executeQuery();
        Pedido p = null;
        if (rs.next()) {
            p = new Pedido();
            p.setIdPedido(rs.getInt("id_pedido"));
            p.setIdProductor(rs.getInt("id_productor"));
            p.setClienteNombre(rs.getString("cliente_nombre"));
            p.setProductoCafe(rs.getString("producto_cafe"));
            p.setCantidadKg(rs.getDouble("cantidad_kg"));
            p.setPrecioUnitario(rs.getDouble("precio_unitario"));
            p.setTotalPrecio(rs.getDouble("total_precio"));
            p.setFechaPedido(rs.getTimestamp("fecha_pedido"));
            p.setEstadoPedido(rs.getString("estado_pedido"));
        }
        rs.close(); ps.close(); conn.close();
        return p;
    }
}