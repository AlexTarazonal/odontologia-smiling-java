package com.mycompany.test_1.models;

public class Usuario {
    private String id;
    private String password;   // ✅ nuevo campo
    private String nombre;
    private String tipo;

    public Usuario() { }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    // —————————————————————————
    // getters/setters de password
    public String getPassword() { 
        return password; 
    }
    public void setPassword(String password) { 
        this.password = password; 
    }
    // —————————————————————————

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }
}
