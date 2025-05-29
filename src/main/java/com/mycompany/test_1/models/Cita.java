package com.mycompany.test_1.models;

import java.time.LocalDate;
import java.time.LocalTime;

public class Cita {
    private int id;
    private String pacienteId;
    private String doctorId;
    private LocalDate fecha;
    private LocalTime hora;
    private String estado;

    public Cita() {}
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getPacienteId() { return pacienteId; }
    public void setPacienteId(String pacienteId) { this.pacienteId = pacienteId; }

    public String getDoctorId() { return doctorId; }
    public void setDoctorId(String doctorId) { this.doctorId = doctorId; }

    public LocalDate getFecha() { return fecha; }
    public void setFecha(LocalDate fecha) { this.fecha = fecha; }

    public LocalTime getHora() { return hora; }
    public void setHora(LocalTime hora) { this.hora = hora; }

    public String getEstado() { return estado; }
    public void setEstado(String estado) { this.estado = estado; }
}