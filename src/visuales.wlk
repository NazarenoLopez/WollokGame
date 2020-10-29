import wollok.game.*
import Nivel.*
object golfista {
	var property fuerza = 0
	var property estrellas = 0
	
	var property position = game.origin()
	method image() = "Golfista.png"


 	method sumaFuerza(cantidad) { fuerza += cantidad }

	method restaFuerza(cantidad) {
		if (cantidad > fuerza)
			throw new Exception(message = "No tengo suficiente fuerza para jugar")
		fuerza -= cantidad
	}
	
	method sumarEstrellas()
	{
		estrellas = {estrellas + 1}
	}

/*/	method ganarOPerder() {
		if(estrellas== 4)
	 	nivelUno.hasGanado()
		else 
		nivelUno.gameOver()
	}*/
	
	method cuantaFuerza(){
		game.say(self, "Tengo " + self.fuerza() + "de fuerza!")
	}
}
class Elementos {
		var property position = game.origin()
		method movete() {
		var a = 0.randomUpTo(18).truncate(0)
		var b = 0.randomUpTo(15).truncate(0)

		position = game.at(a,b) 
		}
		method image()
	
}







object hoyo {
	method image() = "Hoyo.png"
	method position()= game.at(16,14)
	}


class Arena inherits Elementos{
	var property fuerza = 20
	override method image()= "Arena.png"
	method colisionadoPor(golfista){
	golfista.restaFuerza(self.fuerza())
	}
	}


const arena1 = new Arena (position = new Position =(x=4,y=9))
const arena2 = new Arena (position = new Position = (x=10,y=8))
const arena3 = new Arena (position = new Position = (x=10,y=5))


class Agua inherits Elementos{
	var property fuerza = 100
	override method image()= "Agua.png"
	method colisionadoPor(golfista){
	golfista.restaFuerza(self.fuerza())
	}
}

const agua1 = new Agua (x=2,y=5)
const agua2 = new Agua (x=7,y=14)
const agua3 = new Agua (x=14,y=12)


class Estrella inherits Elementos {
	var property fuerza = 50
	override method image() = "Estrella.png"
	method colisionadoPor(golfista){
	golfista.sumaFuerza(self.fuerza())
	golfista.sumarEstrellas()
	}
}
const estrella1 = new Estrella (x=5,y=11)
const estrella2 = new Estrella (x=4,y=13)
const estrella3 = new Estrella (x=8,y=15)



class Rayo inherits Elementos {
	var property fuerza = 20
	override method image() = "Rayo.png"
	method colisionadoPor(golfista){
	golfista.sumaFuerza(self.fuerza())
	}
}

const rayo1 = new Rayo (x=2,y=8)
const rayo2 = new Rayo (x=3,y=6)
const rayo3 = new Rayo (x=9,y=7)




