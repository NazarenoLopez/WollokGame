import wollok.game.*
import Nivel.*
import movimiento.*
object golfista {
	var property fuerza = 200
	var property estrellas = 0

	var property position = game.origin()
	method image() = "Golfista.png"

 	method sumaFuerza(cantidad) { fuerza = fuerza + cantidad }

	method restaFuerza(cantidad) {
		if (cantidad > fuerza)
			nivelUno.gameOver()
		fuerza -= cantidad
	}

	method fuerzaParaCaminar(distancia) = 10 + 5 * distancia
	
	method irA(nuevaPosicion) {
		fuerza -= self.fuerzaParaCaminar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
}
	method sumarEstrellas()  { estrellas = estrellas + 1}

	method perder() {
		if (fuerza < 0)
			nivelUno.gameOver()
	}
	
	method cuantaFuerza(){
		game.say(self, "Tengo " + self.fuerza() + " de fuerza!")
	}
	method cuantasEstrellas(){
		game.say(self, "Tengo " + self.estrellas() + " estrellas")
	}
}
class Elementos {
		var property position = ubicacionesAleatorias.position()
		method movete() {
		var a = 0.randomUpTo(18).truncate(0)
		var b = 0.randomUpTo(15).truncate(0)

		position = game.at(a,b) 
		}
		method image()
	
}


object hoyo {
	method image() = "Hoyo.png"
	method position()= game.at(17,14)
	method colisionadoPor(golfista){
		if (golfista.estrellas() >= 4)
		nivelUno.hasGanado()
		else
		nivelUno.gameOver()
	}
	}


class Arena inherits Elementos{
	var property fuerza = 20
	override method image()= "Arena.png"
	method colisionadoPor(golfista){
	golfista.restaFuerza(self.fuerza())
	}
	}


const arena1 = new Arena ()
const arena2 = new Arena ()
const arena3 = new Arena ()


class Agua inherits Elementos{
	var property fuerza = 100
	override method image()= "Agua.png"
	method colisionadoPor(golfista){
	golfista.restaFuerza(self.fuerza())
	golfista.position(game.origin())
	}
}

const agua1 = new Agua()
const agua2 = new Agua()
const agua3 = new Agua()

class Estrella inherits Elementos {
	var property fuerza = 10
	override method image() = "Estrella.png"
	method colisionadoPor(golfista){
	golfista.sumarEstrellas()
	golfista.sumaFuerza(self.fuerza())
	}
}

const estrella1 = new Estrella()
const estrella2 = new Estrella()
const estrella3 = new Estrella()
const estrella4 = new Estrella()


class Rayo inherits Elementos {
	var property fuerza = 5
	override method image() = "Rayo.png"
	method colisionadoPor(golfista){
	golfista.sumaFuerza(self.fuerza())
	}
}
const rayo1 = new Rayo()
const rayo2 = new Rayo()
const rayo3 = new Rayo()
const rayo4 = new Rayo()

object fondo {
	var property position = game.origin()
	var property image = "Iniciox.png"
	method image() = image
}

object ganar {
	var property position = game.origin()
	var property image = "minionFeliz.png"
	method image() = image
}

object perder {
	var property position = game.origin()
	var property image = "minionTriste.png"
	method image() = image
}

object instrucciones {
	var property position = game.origin()
	var property image = "instrucciones.png"
	method image() = image
}
