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
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ golosina => golosina.libreGluten() })
	}
	
	method preciosCuidados() {
		return self.todasGolosinasConPrecioMenor(10)
	}
	
	method todasGolosinasConPrecioMenor(precio) {
		return golosinas.all({ golosina => golosina.precio() <= precio })
	}
	
	method golosinaDeSabor(unSabor) {
		return golosinas.find({ golosina => self.tieneGusto(golosina, unSabor) })
	}
	
	method golosinasDeSabor(unSabor) {
		return golosinas.filter({ golosina => self.tieneGusto(golosina, unSabor) })
	}
	
	method tieneGusto(golosina, unSabor) {
		return golosina.gusto() == unSabor
	}
	
	method sabores() {
		return golosinas.map({ golosina => golosina.gusto() }).asSet()
	}
	
	method golosinaMasCara() {
		return golosinas.max({ golosina => golosina.precio() })
	}
	
	method pesoGolosinas() {
		return golosinas.sum({ golosina => golosina.peso() })
	}
}








