/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Classes.Producto;
import Models.ModeloProducto;

/**
 *
 * @author tonis
 */
public class ControladorProducto {
    public Producto getProducto(int id){
        return new ModeloProducto().getProducto(id);
    }
}
