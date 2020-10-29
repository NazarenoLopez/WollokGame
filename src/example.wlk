import wollok.game.*
import visuales.*
object nivelUno{
	
	const anchoTotal = 18
	const altoTotal = 15
	
	method inicio(){
		game.clear()
		game.title("Golfito")
		game.width(anchoTotal)
		game.height(altoTotal)
		game.boardGround("Inicio.jpg")
		
		keyboard.s().onPressDo{self.configurate()}
	}	

		
	method configurate() {
	//	CONFIGURACI�N DEL JUEGO
		game.clear()
		game.width(anchoTotal)
		game.height(altoTotal)
		game.boardGround("Fondo.jpg")
		
				
		
		
		//Visuales	
		   
		game.addVisual(hoyo)
		game.addVisual(arena1)
		game.addVisual(arena2)
		game.addVisual(arena3)
		game.addVisual(agua1)
		game.addVisual(agua2)
		game.addVisual(agua3)
		game.addVisual(estrella1)
		game.addVisual(estrella2)
		game.addVisual(estrella3)
		game.addVisual(rayo1)
		game.addVisual(rayo2)
		game.addVisual(rayo3)
		game.addVisual(golfista)   
		
		keyboard.up().onPressDo { golfista.move(golfista.position().up(1)) }
		keyboard.down().onPressDo { golfista.move(golfista.position().down(1)) }
		keyboard.left().onPressDo { golfista.move(golfista.position().left(1)) }
		keyboard.right().onPressDo { golfista.move(golfista.position().right(1)) }
		
		
		game.start()
		
	}

}