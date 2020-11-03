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
		game.boardGround("fondo.png")
		self.agregarFondo(fondo)
		keyboard.i().onPressDo{self.agregarFondo(instrucciones)}
		keyboard.r().onPressDo{self.removerFondo(instrucciones)}
		keyboard.s().onPressDo{self.configurate()}
	}	
method agregarFondo(imagen){
	game.addVisual(imagen)
}
method removerFondo(imagen){
	game.removeVisual(imagen)
}
		
	method configurate() {
	
		self.removerFondo(fondo)
	
		game.addVisual(golfista)  
		game.addVisual(hoyo)
		 [arena1,arena2,arena3,agua1,agua2,agua3,estrella1,estrella2,estrella3,rayo4,estrella4,rayo1,rayo2,rayo3].forEach { elemento =>  
		game.addVisual(elemento)}
		movimiento.configurarFlechas(golfista)
		
		game.onTick(4000,"movimiento",{arena1.movete()})
		game.onTick(2000,"movimiento",{arena2.movete()})
		game.onTick(3000,"movimiento",{arena3.movete()})
		game.onTick(4000,"movimiento",{agua1.movete()})
		game.onTick(2000,"movimiento",{agua2.movete()})
		game.onTick(3000,"movimiento",{agua3.movete()})
		game.onTick(1000,"movimiento",{golfista.restaFuerza(10)})
		game.whenCollideDo(golfista, {elemento => elemento.colisionadoPor(golfista)})
		keyboard.f().onPressDo {(golfista.cuantaFuerza())}
		keyboard.e().onPressDo {(golfista.cuantasEstrellas())}
}

method hasGanado(){
		game.clear()
		self.agregarFondo(ganar)
		keyboard.e().onPressDo{game.stop()}
	}
method gameOver(){
		game.clear()
     	self.agregarFondo(perder)
		keyboard.e().onPressDo{game.stop()}
}}