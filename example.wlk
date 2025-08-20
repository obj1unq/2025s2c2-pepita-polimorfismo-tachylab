object pepita {
  var energia = 100
  method energia() {return energia}
  method energia(_energia) {
    energia = _energia
    }
  method volar(despegue) {
    energia = energia - 10 - despegue
  }
  method descansar() {
    energia = energia + 10
  }
  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
  }
}

object pepon {
  var energia = 30
  method comer(alimento) {
    energia = energia + (alimento.energiaQueAporta() * 0.5)
  }
  method volar(despegue) {
    energia = energia - 20 - (despegue * 2)
  }
}


object alpiste {
  method energiaQueAporta(){
    return 20
  }
}

object roque {
  var ave = pepita
  var cenas = 0
  method ave() {return ave}
  method ave(_ave){
    ave = _ave
  }
  method alimentar(alimento) {
    ave.comer(alimento)
    cenas = cenas + 1
  }
  method entrenar() {
    cenas = 0
  }
}

object manzana {
  var madurez = 1
  method energiaQueAporta() {
    return 5 + madurez
  }
  method madurar() {
    madurez = madurez + (self.energiaQueAporta() * 0.1)
  }
}