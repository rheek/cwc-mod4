//
//  DataService.swift
//  Recipe List App
//
//  Created by Joshua Goble on 1/6/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe]{
        
        
        // Parse local json data
        
        // Get a url  path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // check if pathstring is not nil, otherwise...
        guard pathString != nil else{
            
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            
            
            do{
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                
                return recipeData
                

            }
            catch {
                // error with parsing data
                print(error)
            }
            

            
            // Return the recipes
            
            
            
        }
        catch {
            // error with getting data
            print(error)
        }

        
        // if all else fails, return an empty Recipe array
        return [Recipe]()
        
    }
    
    
}

