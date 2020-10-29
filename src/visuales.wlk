import wollok.game.*

object golfista {
	//var property fuerza = 0
	//var property estrellas = 0
	
	var property position = game.origin()
	method image() = "Golfista.png"

}
/* 	method sumaFuerza(cantidad) { fuerza += cantidad }

	method restaFuerza(cantidad) {
		if (cantidad > fuerza)
			throw new Exception(message = "No tengo suficiente fuerza para jugar")
		fuerza -= cantidad
	}
	
	method sumarEstrellas()
	{
		estrellas = {estrellas + 1}
	}
	method agarrarRayo(){
		self.sumaFuerza(rayo.fuerza())
	}
	method agarrarEstrella(){
	self.sumaFuerza(estrella.fuerza())
	self.sumarEstrellas()
	}
	method choqueArena(){
		self.restaFuerza(arena.fuerza())
	}
		method choqueAgua(){
		self.restaFuerza(agua.fuerza())
	}
	method ganarOPerder() {
		if(estrellas== 4)
	 	nivelUno.hasGanado()
		else 
		nivelUno.gameOver()
	}
	
	method cuantaFuerza(){
		game.say(self, "Tengo " + self.fuerza() + "de fuerza!")
	}
*/
object hoyo {
	method image() = "Hoyo.png"
	method position()= game.at(16,14)
	}
/*object arena {
	var property fuerza = 20

	method image() = "Arena.png"
	method position ()= game.at(4,12)
//	method movete() {nivelUno.ubicarAleatoriamente(self)}
	}*/

class Arena {
	var property fuerza = 20
	var property x
	var property y
	method image()= "Arena.png"
	method position()= game.at(x,y)
}

const arena1 = new Arena (x=4,y=9)
const arena2 = new Arena (x=10,y=8)
const arena3 = new Arena (x=10,y=5)


class Agua{
	var property fuerza = 100
	var property x
	var property y
	method image()= "Agua.png"
	method position() = game.at(x,y)
}

const agua1 = new Agua (x=2,y=5)
const agua2 = new Agua (x=7,y=14)
const agua3 = new Agua (x=14,y=12)
/*object agua { 
	
	var property fuerza = 100
	method image() = "Agua.png"
	method position() = game.at(10,5)
	//method movete() {nivelUno.ubicarAleatoriamente(self)}
}*/

class Estrella {
	var property fuerza = 50
	var property x
	var property y
	method image() = "Estrella.png"
	method position() = game.at(x,y)
}
const estrella1 = new Estrella (x=5,y=11)
const estrella2 = new Estrella (x=4,y=13)
const estrella3 = new Estrella (x=8,y=15)


/*object estrella {
	var property fuerza = 50
	method image() = "Estrella.png"
	method position() = game.at(7,12) 
}*/
class Rayo {
	var property fuerza = 20
	var property x
	var property y
	method image() = "Rayo.png"
	method position() = game.at(x,y)
}

const rayo1 = new Rayo (x=2,y=8)
const rayo2 = new Rayo (x=3,y=6)
const rayo3 = new Rayo (x=9,y=7)

object rayo {
	var property fuerza = 20
	method image() = "Rayo.png"
	method position() = game.at(12,6)
}

