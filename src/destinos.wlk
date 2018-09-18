import mensajeros.*

// Destinos

// Deja entrar a quien pueda hacer una llamada.
object matrix {
	method puedeEntrar(mensajero){
		return mensajero.puedeLlamar()
	}
}

// Deja pasar a todo lo que pese hasta una tonelada.
object brooklyn {
	method puedeEntrar(mensajero){
		return mensajero.peso() < 1000
	}
}

// Transportes

object bicicleta {
	method peso() = 8
}

object camion {
	var cantidadDeAcoplados = 1
	var peso = cantidadDeAcoplados * 500
	method sumarAcoplado(){ cantidadDeAcoplados ++ }
	method peso() = peso
	
}

