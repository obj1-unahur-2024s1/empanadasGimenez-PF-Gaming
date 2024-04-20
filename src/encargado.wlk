import personas.*

object gimenez {
	var fondo = 3000000
	
	
	method pagarEmpleado(empleado) {
    	fondo = 0.max(fondo - empleado.sueldo())
    	empleado.cobrarSueldo()
	}
}