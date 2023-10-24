//
//  RegistroLogInTest.swift
//  SignUpTestinTests
//
//  Created by Vanessa Garcia on 23/10/23.
//

import XCTest
@testable import SignUpTestin

final class RegistroLogInTest: XCTestCase {
    
        let sut = ValidarNombreClase()
        
        func testSigupModel_whenNombreEsDado_ShouldPass(){
            //given
            let primerNombre = "Miguel" //user name
            //let sut = ValidarNombreClase()
            
            //when
            let nombreValido = sut.ValidarNombreFuncion(nombre: primerNombre)
            
            //then//assert
            
            XCTAssert(nombreValido, "Este es el happy pad")
            
        }
        
        func testSigupFuncion_whenNombreEsDadoyEsVacio_ShouldNotPass(){
            //given
            let primerNombre = "" //user name
            //let sut = ValidarNombreClase()
            
            //when
            let nombreNoValido = sut.ValidarNombreFuncion(nombre: primerNombre)
            
            //then
            
            XCTAssertFalse(nombreNoValido, "Este Assert espera un False por que es nombre vacio, si regresa TRUE es por que est mal")
            
        }
        
        func testSigupModel_whenNombreEsDemasiadoCorto_ShouldNotPass(){
            //given
            let primerNombre = "VG" //user name
            //let sut = ValidarNombreClase()
            
            //when
            let nombreValido = sut.ValidarNombreFuncion(nombre: primerNombre)
            
            //then
            
            XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado largo")
            
        }
        
        func testSigupModel_whenNombreEsDemasiadoLargo_ShouldNotPass(){
            //given
            let primerNombre = "bsjuvskns kajsha skkashsjha khakhkhg" //user name
            //let sut = ValidarNombreClase()
            
            //when
            let nombreValido = sut.ValidarNombreFuncion(nombre: primerNombre)
            
            //then
            
            XCTAssertFalse(nombreValido, "Este testCase no debe pasar si el nombre es demasiado largo")
            
            
        }
        
        func testSigupModel_whenPasswordGivenAreAqual_ShouldPass(){
            //given
            let doPassWordsMatch = sut.doPasswordsMatch(password: "123123", repearPassword: "123123")
            XCTAssertTrue(doPassWordsMatch, "debe regresar TRUE cuando concidan los passwords , pero ha regresado FALSE")
        }
        
        func testSignUpModel_WhenPasswordisNOTEqual_ShouldReturnFALSE(){
          let doPassWordsMatch = sut.doPasswordsMatch(password: "1231236", repearPassword: "123123")
          XCTAssertFalse(doPassWordsMatch, "debe regresar FALSE cuando NO concidan los passwords , pero ha regresado TRUE")
        }
      }

