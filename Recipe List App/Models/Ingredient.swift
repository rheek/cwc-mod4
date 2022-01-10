//
//  Ingredient.swift
//  Recipe List App
//
//  Created by Joshua Goble on 1/9/22.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
    
    
    
}
