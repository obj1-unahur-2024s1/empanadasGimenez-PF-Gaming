object galvan {
	var sueldo = 150000
	var sueldoAcumulado = 0
	var deuda = 0
	
	method sueldo() = sueldo
	method cobrarSueldo(){}
	method gastar(cuanto){
		deuda = (deuda + cuanto).abs()
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return 0.max(sueldoAcumulado - deuda)
	}
	//se considera pobre cuando tiene 0 pesos
	method estoyPobre(){
		return self.totalDinero() <= 0
	}
}	
	
object baigorria { 
	var sueldoAcumulado = 0
	var precioPorEmpanada = 150
	var cantDeEmpanadas = 0
	
	method sueldo() = precioPorEmpanada * cantDeEmpanadas
	
	method cobrarSueldo(){
		sueldoAcumulado = sueldoAcumulado + self.sueldo()
	}
	method sueldoAcumulado(){
		return self.sueldo()
	}
}