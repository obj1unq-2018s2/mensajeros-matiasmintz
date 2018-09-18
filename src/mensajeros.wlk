import destinos.*

// Mensajería

object mensajeria {
	const property mensajeros = []
	method contratar(alguien) { mensajeros.add(alguien) }
}

object paquete {
	var property estaPago = false
	var destino
	method destino(lugar) { destino = lugar }
	method pagar() { estaPago = true }
	method puedeSerEnviadoPor(alguien){
		return mensajeria.mensajeros().contains(alguien)
	}
}

// Mensajeros

object neo {
	var tieneCredito = true
	const property destinosHabilitados = []
	method habilitarDestino(destino){ destinosHabilitados.add(destino) }
	method cargarCredito() { tieneCredito = true }
	method gastarCredito() { tieneCredito = false }
	method puedeLlamar() = tieneCredito
}

object chuckNorris {
	method puedeLlamar() = true
}

object roberto {
	
}