package com.mycompany.test_1.models;

import java.time.LocalDate;

public class Receta {
    private int id;
    private String pacienteId;
    private String pacienteNombre;  // ← nuevo
    private String doctorId;
    private String doctorNombre;    // ← nuevo
    private LocalDate fecha;
    private String detalle;

    public Receta() { }

    // id
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    // pacienteId
    public String getPacienteId() { return pacienteId; }
    public void setPacienteId(String pacienteId) { this.pacienteId = pacienteId; }

    // pacienteNombre
    public String getPacienteNombre() { return pacienteNombre; }
    public void setPacienteNombre(String pacienteNombre) { this.pacienteNombre = pacienteNombre; }

    // doctorId
    public String getDoctorId() { return doctorId; }
    public void setDoctorId(String doctorId) { this.doctorId = doctorId; }

    // doctorNombre
    public String getDoctorNombre() { return doctorNombre; }
    public void setDoctorNombre(String doctorNombre) { this.doctorNombre = doctorNombre; }

    // fecha
    public LocalDate getFecha() { return fecha; }
    public void setFecha(LocalDate fecha) { this.fecha = fecha; }

    // detalle
    public String getDetalle() { return detalle; }
    public void setDetalle(String detalle) { this.detalle = detalle; }
}
