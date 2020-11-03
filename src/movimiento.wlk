import wollok.game.*
import Nivel.*
import visuales.*

object movimiento {
	
	method configurarFlechas(golfista) {
		keyboard.left().onPressDo({ golfista.irA(golfista.position().left(1))})
		keyboard.right().onPressDo({ golfista.irA(golfista.position().right(1))})
		keyboard.up().onPressDo({ golfista.irA(golfista.position().up(1))})
		keyboard.down().onPressDo({ golfista.irA(golfista.position().down(1))})
	}
	method mover(direccion,personaje){
		personaje.position(direccion.siguiente(personaje.position()))
	}	
	
}

object ubicacionesAleatorias {
		
	method position() {
	
		return 	game.at( 
					(0 .. game.width() - 1 ).anyOne(),
					(0..  game.height() - 1).anyOne()
		) 
	}
	
}


