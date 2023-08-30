object ludmila {
	method precioPorKm(km) = km * 18
}

object anaMaria {
	var estaBienEconomicamente = true
	method estaBienEconomicamente() = estaBienEconomicamente
	method precioPorKm(km) {
		if (estaBienEconomicamente) { return 30 }
		else { return 25 }
	}
}

object teresa {
	var precio = 22
	method cambiarPrecio(nuevoPrecio) { precio = nuevoPrecio } 
	method precioPorKm(km) {
		return km * precio
	}
}

object melina {
	var property clienta
	method precioPorKm(km) = clienta.precioPorKm(km) - 3
}