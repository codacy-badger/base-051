package com.guysfromlab.entity;

public class Folder extends AbstractDataPiece {

    protected Folder(String name) {
        super(name);
    }

    @Override
    public boolean isFolder() {
        return true;
    }

    @Override
    public int getSize() {
        return 0;
    }
}
