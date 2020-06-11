object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
	method mordisco() { peso = peso * 0.8 - 1 }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method gusto() { return "naranja" }
	method libreGluten() { return true }
	method mordisco() {
		if (self.peso() >= 2) {			
			peso = peso * 0.9
		} 
	}
}

object chocolatin {
	var peso
	var pesoInicial
	
	method pesoInicial(_peso) { 
		pesoInicial = _peso
		peso = _peso
	}
	
	method peso() { return peso }
	method precio() { return 0.5 * pesoInicial }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
	
	method mordisco() { peso = peso - 2 }
}

object golosinaBaniada {
	var banioChocolate = 4
	var golosinaBase
	method golosinaBase(golosina) {
		golosinaBase = golosina
	}
	
	method precio() { return golosinaBase.precio() + 2 }
	method peso() { return golosinaBase.peso() + banioChocolate }
	method gusto() { return golosinaBase.gusto() }
	method libreGluten() { return golosinaBase.libreGluten() }
	method mordisco() { 
		golosinaBase.mordisco()
		banioChocolate = (banioChocolate - 2).max(0)
	}
}

object pastilla {
	const peso = 5
	var sabor = saborFrutilla
	var libreGluten = false
	
	method precio() { return if (libreGluten) 7 else 10 }
	method peso() { return peso }
	method gusto() { return sabor.gusto() }
	method libreGluten() { return libreGluten }
	method libreGluten(esLibre) { libreGluten = esLibre }
	method mordisco() {
		sabor = sabor.proximoSabor()
	}
}

object saborFrutilla {
	method gusto() { return "frutilla" }
	method proximoSabor() { return saborChocolate }
}
object saborChocolate {
	method gusto() { return "chocolate" }
	method proximoSabor() { return saborNaranja }
}
object saborNaranja {
	method gusto() { return "naranja" }
	method proximoSabor() { return saborFrutilla}
}