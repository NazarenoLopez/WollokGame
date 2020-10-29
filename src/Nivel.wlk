import wollok.game.*
import visuales.*
import movimiento.*
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
	
		game.clear()
		game.boardGround("fondo.jpg")
		
		game.addVisual(golfista)  
		game.addVisual(hoyo)
		 [arena1,arena2,arena3,agua1,agua2,agua3,estrella1,estrella2,estrella3,rayo1,rayo2,rayo3].forEach { elemento =>  
		game.addVisual(elemento)}
		movimiento.configurarFlechas(golfista)
		
		//Visuales	
		/*    
		
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
	game.addVisual(rayo3)*/
		
}
}