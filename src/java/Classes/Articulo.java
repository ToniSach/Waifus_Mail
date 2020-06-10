package Classes;

public class Articulo {
    
    private int idProducto;
    private int cantidadP;

    public Articulo(int idProducto, int cantidadP) {
        this.idProducto = idProducto;
        this.cantidadP = cantidadP;
    }

    /**
     * @return the idProducto
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idProducto to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidadP() {
        return cantidadP;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidadP(int cantidadP) {
        this.cantidadP = cantidadP;
    }
    
    
}
