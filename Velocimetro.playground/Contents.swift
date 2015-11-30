//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



enum Velocidades : Int{
    
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120, velocidadInical=1
    
    init(velocidadInicial : Velocidades){
        self = .velocidadInical
        
    }
    
    init(){
       self = .velocidadInical
    }
    
}


class Auto{
    
    var velocidad = Velocidades()
    
    init(){
        self.velocidad = .apagado
    }
    
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        
        let actual = self.velocidad
        var velocidadEnCadena = ""
        
        switch self.velocidad{
        case .apagado:
            self.velocidad = .velocidadBaja
            velocidadEnCadena = ", Apagado"
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
            velocidadEnCadena = ", Velocidad Baja"
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
            velocidadEnCadena = ", Velocidad Media"
        case .velocidadAlta:
            self.velocidad = .apagado
             velocidadEnCadena = ", Velocidad Alta"
        default:
            self.velocidad = .apagado
        }
        
        return (actual.rawValue, velocidadEnCadena)
        
    }
    
}


var auto =  Auto()


for  i in 0...20{
    
    
    var resultado = auto.cambioDeVelocidad()
    
    resultado.actual
    resultado.velocidadEnCadena
    
    print( "\(resultado.actual) \(resultado.velocidadEnCadena) ")
   
    
}



