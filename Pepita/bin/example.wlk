//nara es el nombre de mi gata

object narita {
	var energia = 0;
	var debil = true;
	var feliz = false;
	var quiere = 0;
	method comer(gramos){
		energia = energia +gramos*4;
		self.estaDebil()
		self.estaFeliz()
	}
	method comerMarca(marca, cantidad){
		if ( marca.mojado() ){
			energia = energia + (15 * cantidad);
		}
		else{
			energia = energia + (20 * cantidad);
		}
		self.estaDebil()
		self.estaFeliz()
	}
	method comerAtun(cant){
		self.correr(5);
		energia = energia +cant*4;
		self.correr(5);
		self.estaDebil()
		self.estaFeliz()
	}
	method correr(km){
		energia = energia-km-10;
		self.estaDebil()
		self.estaFeliz()
	}
	method energia(){
		return energia;
	}
	method estaDebil(){
		if (energia<50){
			debil = true;
		}
		else{
			debil = false;
		}
	}
	method estaFeliz(){
		if (energia>500 && energia<1000){
			feliz = true;
		}
		else{
			feliz = false;
		}
	}
	method comoEsta(){
		var texto = 'abc';
		if(feliz){
			texto = 'esta feliz';
		}
		else if (debil){
			texto = 'esta debil';
		}
		else{
			texto = 'esta regular';
		}
		return texto;
	}
	method cuantoQuiereCorrer(){
		quiere = energia/5;
		
		if (energia>300 && energia<400){
			quiere = quiere + 10;
		}
		if (energia%20 == 0){
			quiere = quiere + 15
		}
		return quiere;
	}
	method haceLoQueQuieras(){
		if(feliz){
			self.correr(8);
		}
		else if (debil){
			self.comer(8);
		}
	}
}

object wiskas{
	var mojado = false;
	
	method mojado(){
		return mojado;
	}
	method mojarse(){
		mojado = true
	}
	method secarse(){
		mojado = false
	}
}

object entrenador{

	method entrenar(animal){
		animal.correr(10);
		animal.comerAtun(10);
		animal.correr(5);
		animal.haceLoQueQuieras();
	}
}