package org.example;

public class Vehicle {
    private int size;

    public Vehicle(int size) {
        this.size = size;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int park(CarPark carPark ,int newRow, int newCol){
        if(carPark.spaces[newCol][newRow] != null){
            carPark.spaces[newCol][newRow] = this;
            return 0;
        }
        return 1;
    }
}
