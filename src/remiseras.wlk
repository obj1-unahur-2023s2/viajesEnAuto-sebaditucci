import clientes.*

object roxana {
	method precioViaje(cliente, km) = cliente.precioPorKm(km)
}

object gabriela {
	method precioViaje(cliente, km) = cliente.precioPorKm(km) + cliente.precioPorKm(km) / 20
}

object mariela {
	method precioViaje(cliente, km) = cliente.precioPorKm(km).max(50)
} 

object juana {
	method precioViaje(cliente, km) {
		if (cliente.precioPorKm(km) <= 8) { return 100 }
		else { return 200 }
	}
}

object lucia {
	var remiseraReemplazando
	method remiseraReemplazando() = remiseraReemplazando
	method reemplazarANuevaRemisera(nuevaRemisera) { remiseraReemplazando = nuevaRemisera }
	method precioViaje(cliente, km) = remiseraReemplazando.precioViaje(cliente, km)
}