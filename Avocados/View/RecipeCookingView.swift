//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Jonathan Ricky Sandjaja on 24/01/24.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                
                Text("Serves: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
