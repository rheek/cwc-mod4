//
//  Recipe.swift
//  Recipe List App
//
//  Created by Joshua Goble on 1/6/22.
//

import Foundation


class Recipe: Identifiable, Decodable{
    
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[Ingredient]
    var directions:[String]
    var highlights:[String]
        
    
}
