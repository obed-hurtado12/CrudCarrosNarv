package com.utez.edu.mx.carros.modelo;

public class Carro {

    private int id;
    private String color;
    private String aniopub;
    private float precio;

    public Carro() {
    }

    public Carro(int id, String color, String aniopub, float precio) {
        this.id = id;
        this.color = color;
        this.aniopub = aniopub;
        this.precio = precio;
    }

    public Carro(String color, String aniopub, float precio) {
        this.color = color;
        this.aniopub = aniopub;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAniopub() {
        return aniopub;
    }

    public void setAniopub(String aniopub) {
        this.aniopub = aniopub;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
}
