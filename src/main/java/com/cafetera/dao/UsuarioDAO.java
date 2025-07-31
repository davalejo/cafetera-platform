package com.cafetera.dao;

import com.cafetera.model.Usuario;
import java.sql.*;

public class UsuarioDAO {
    public Usuario buscarPorUsername(String username) throws SQLException {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM usuarios WHERE username = ?");
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario();
            u.setIdUsuario(rs.getInt("id_usuario"));
            u.setUsername(rs.getString("username"));
            u.setPasswordHash(rs.getString("password_hash"));
            u.setRol(rs.getString("rol"));
            u.setFechaCreacion(rs.getTimestamp("fecha_creacion"));
        }
        rs.close(); ps.close(); conn.close();
        return u;
    }
}