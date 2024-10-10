package org.example;

public class CarPark {

    private int rows = 6;
    private int cols = 4;

    Vehicle[][] spaces = new Vehicle[cols][rows];

    int[] bikeRows = {1, 2};
    int[] carRows  = {3, 4, 5};
    int[] vanRows  = {6};

    public CarPark(int rows, int cols) {
        this.rows = rows;
        this.cols = cols;
    }

    public CarPark() {
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getCols() {
        return cols;
    }

    public void setCols(int cols) {
        this.cols = cols;
    }

    public boolean checkSpace(Vehicle vehicle){

    }

}
