//
//  ValidarNombreClase.swift
//  SignUpTestin
//
//  Created by Vanessa Garcia on 23/10/23.
//

import Foundation

class ValidarNombreClase{
    
    
    func ValidarNombreFuncion(nombre : String) -> Bool {
        var valorDeRegreso = true
        if nombre.count < 3 || nombre.count > 10 {
            valorDeRegreso = false
        }
        
        return valorDeRegreso
    }
    
    func doPasswordsMatch(password:String, repearPassword:String) -> Bool{
        return password == repearPassword
    }
    
}
