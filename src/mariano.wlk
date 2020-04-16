import golosinas.golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() {
		return golosinas.size()
	}
	
	method tieneLaGolosina(unaGolosina) {
		return golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		golosinas.forEach({ golosina => golosina.mordisco() })
	}
}

