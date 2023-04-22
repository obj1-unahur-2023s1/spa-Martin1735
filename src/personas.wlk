
object olivia {
	var gradosDeConcentracion = 6
	method gradosDeConcentracion() { return gradosDeConcentracion }
	method recibirMasajes(){ gradosDeConcentracion += 3 }
	method discutir() { gradosDeConcentracion -= 1 }
	method darseUnBanioDeVapor() {}
}


object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.verElNoticiero()
		self.tomarAgua()
	}
}

object ramiro {
	var property nivelDeContractura = 0
	var property pielGrasa
	method recibirMasajes() { nivelDeContractura = 0.max(nivelDeContractura - 2 ) }
	method darseUnBanioDeVapor() { pielGrasa = false }
	method comerseUnBigMac() { pielGrasa = true }
	method bajarALaFosa() { pielGrasa = true; nivelDeContractura += 1 }
	method jugarAlPaddle() {  nivelDeContractura += 3 }
	
	method diaDeTrabajo() { 
		self.bajarALaFosa();
		self.comerseUnBigMac();
		self.bajarALaFosa()
	}
}






