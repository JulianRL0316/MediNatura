/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author julia
 */
public class PersonaDAO {

    PreparedStatement ps;
    ResultSet rs;
    Conexion co = new Conexion();
    Connection con;

    public List listar() {
        List<Persona> lista = new ArrayList<>();
        String sql = "select * from PERSONA";
        try {
            con = co.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Persona persona = new Persona();
                persona.setId(rs.getString(1));
                persona.setNombre(rs.getString(2));
                persona.setTipo(rs.getString(3));
                persona.setCorreo(rs.getString(4));
                lista.add(persona);
            }
        } catch (Exception e) {

        }
        return lista;
    }

    public int agregar(Persona persona) {
        int r = 0;
        try {
            con = co.conectar();
            ps = con.prepareStatement("insert into persona(id, nombre, tipo, correo) values(?,?,?,?)");
            ps.setString(1, persona.getId());
            ps.setString(2, persona.getNombre());
            ps.setString(3, persona.getTipo());
            ps.setString(4, persona.getCorreo());
            r = ps.executeUpdate();
            if (r == 1) {
                r = 1;
            } else {
                r = 0;
            }
        } catch (Exception e) {

        }
        return r;
    }

    public Persona listarPorId(String id) {
        Persona persona = new Persona();
        try {
            con = co.conectar();
            ps = con.prepareStatement("select * from persona where id=" + id);
            rs = ps.executeQuery();

            while (rs.next()) {
                persona.setId(rs.getString(1));
                persona.setNombre(rs.getString(2));
                persona.setTipo(rs.getString(3));
                persona.setCorreo(rs.getString(4));
            }
        } catch (Exception e) {
        }
        return persona;
    }

    public int actualizar(Persona persona) {
        int r = 0;
        try {
            con = co.conectar();
            ps = con.prepareStatement("update persona set nombre=?, tipo=?, correo=? where id=?");
            ps.setString(1, persona.getNombre());
            ps.setString(2, persona.getTipo());
            ps.setString(3, persona.getCorreo());
            ps.setString(4, persona.getId());
            r=ps.executeUpdate();
            if (r == 1) {
                r = 1;
            } else {
                r = 0;
            }
        } catch (Exception e) {
        }
        return r;
    }
    
    public void eliminar(String id){
        
        try {
            con = co.conectar();
            ps = con.prepareStatement("delete from persona where id="+id);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
}
