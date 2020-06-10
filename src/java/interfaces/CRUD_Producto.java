/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import Classes.Producto;
import java.util.List;

/**
 *
 * @author tonis
 */
public interface CRUD_Producto {
    public List listarproducto();
    public Producto listarprod(int id);
    public boolean addprod(Producto prod);
    public boolean editprod(Producto prod);
    public boolean eliminarprod(int id);
}
