//
//  Profile.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 26/8/22.
//

import Foundation

struct User {
    
    let nombre: String
    let apellido: String
    let clPiel:String
    let clCabello: String
    let clOjos: String
    
    let talla: Int
    let edad: Int
    let altura: Int
    let dni: String
    let fchCumple: Int
    
    init(nombre_: String,apellido_:String, clPiel_: String,clCabello_: String, clOjos_: String, talla_:Int, edad_: Int, altura_: Int,dni_: String, fchCumple_: Int) {
        self.nombre = nombre_
        self.apellido = apellido_
        self.clPiel = clPiel_
        self.clCabello = clCabello_
        self.clOjos = clOjos_
        
        self.talla = talla_
        self.edad = edad_
        self.altura = altura_
        self.dni = dni_
        self.fchCumple = fchCumple_
    }
    
}
