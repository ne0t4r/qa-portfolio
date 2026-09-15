package org.example;

import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;

public static void App(String[] args) {
    double[][] firstMatrix = {{1, 2, 3}, {4, 5, 6}}; //matrix 1
    double[][] secondMatrix = {{1, 2}, {4, 5}, {5, 6}}; //matrix 2

    RealMatrix m = MatrixUtils.createRealMatrix(firstMatrix);
    RealMatrix n = MatrixUtils.createRealMatrix(secondMatrix);

    RealMatrix p = m.multiply(n); //multiplying matrices
    System.out.println(p); //printing the resulting matrix
}


