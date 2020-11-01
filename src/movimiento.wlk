import wollok.game.*
import Nivel.*
import visuales.*
object izquierda { 
	method siguiente(position) = position.left(1) 
	method opuesto() = derecha
}

object derecha { 
	method siguiente(position) = position.right(1) 
	method opuesto() = izquierda
}

object abajo { 
	method siguiente(position) = position.down(1) 
	method opuesto() = arriba
}

object arriba { 
	method siguiente(position) = position.up(1) 
	method opuesto() = abajo
}

object movimiento {
	
//	method configurarFlechas(visual){
//		keyboard.up().onPressDo{ self.mover(arriba,visual)}
//		keyboard.down().onPressDo{ self.mover(abajo,visual)}
//		keyboard.left().onPressDo{ self.mover(izquierda,visual)}
//		keyboard.right().onPressDo{ self.mover(derecha,visual)}
//   }
	
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
	
	method emptyPosition() {
		const position = self.position()
		if(game.getObjectsIn(position).isEmpty()) {
			return position	
		}
		else {
			return self.emptyPosition()
		}
	}
	
}


