package com.guysfromlab.entity;

public class File extends AbstractDataPiece {

    protected File(String name) {
        super(name);
    }

    @Override
    public boolean isFolder() {
        return false;
    }

    @Override
    public int getSize() {
        return 0;
    }
}
