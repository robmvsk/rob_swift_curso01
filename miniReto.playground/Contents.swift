//: Playground - noun: a place where people can play

import UIKit

var msg : String = ""
for n in 0...100 {
    msg = ""
    if n != 0 {  //el cero no es par, no divisible entre 5
        if n % 5 == 0 {
            msg += "El # \(n) Bingo!!! "
        }
        
        if n % 2 == 0 {
            msg += "El # \(n) es Par!!! "
        }
        else {
            msg += "El # \(n) es Impar!!! "
        }
        
        if n >= 30 && n <= 40 {
            msg += "El # \(n) Viva Swift!!!"
        }
    }
    
    if msg != "" {
        print(msg)
    }
}


