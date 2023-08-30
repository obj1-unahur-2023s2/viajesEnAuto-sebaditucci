import remiseras.*
import clientes.*

object oficina {
	var remiseraDePrimera
	var remiseraDeSegunda
	method asignarRemiseras(remisera1, remisera2){
		remiseraDePrimera = remisera1
		remiseraDeSegunda = remisera2
	}	
	method cambiarPrimerRemiseraPor(nuevaRemisera) { remiseraDePrimera = nuevaRemisera }
	method cambiarSegundaRemiseraPor(nuevaRemisera) { remiseraDeSegunda = nuevaRemisera }
	method intercambiarRemiseras() {
		const remiseraAux1 = remiseraDePrimera
		const remiseraAux2 = remiseraDeSegunda
		remiseraDePrimera = remiseraAux2
		remiseraDeSegunda = remiseraAux1
	}
	method remiseraElegidaParaViaje(cliente, kms) {
		if (remiseraDePrimera.precioViaje(cliente, kms) - remiseraDeSegunda.precioViaje(cliente, kms) > 30) { return remiseraDeSegunda }
		else { return remiseraDePrimera }
	}
}
