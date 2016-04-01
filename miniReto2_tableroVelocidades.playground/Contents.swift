//: Playground - noun: a place where people can play

import UIKit

//: RMV> MINI RETO 2  ROBERTO

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    func obtenDatosVelocidad() -> (Int, String) {
        var velocidadKms : Int
        var msgVelocidad : String
        
        switch self {
        case .Apagado:
            msgVelocidad = "Apagado"
        case .VelocidadBaja:
            msgVelocidad = "Velocidad baja"
        case .VelocidadMedia:
            msgVelocidad = "Velocidad media"
        default:
            msgVelocidad = "Velocidad alta"
        }
        
        velocidadKms = self.rawValue
        
        msgVelocidad = " km por hora, " + msgVelocidad
        
        let resultado = (velocidadKms, msgVelocidad)
        
        return resultado
        
    }
    
}


class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        default:
            velocidad = .VelocidadMedia
        }
        
        return velocidad.obtenDatosVelocidad()
        
    }
    
}


//probando la enumeracion y la clase

var miAuto = Auto()

miAuto.velocidad

var resultado : (actual : Int, velocidadEnCadena : String)

for i in 1...20 {
    resultado = miAuto.cambioDeVelocidad()
    print( String(resultado.actual) + resultado.velocidadEnCadena)
}


