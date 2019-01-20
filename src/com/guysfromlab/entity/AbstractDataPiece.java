package com.guysfromlab.entity;

public abstract class AbstractDataPiece {

    private String name;

    protected AbstractDataPiece(String name) {
        this.name = name;
    }

    public abstract boolean isFolder();
    public abstract int getSize();

}