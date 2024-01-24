//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Jonathan Ricky Sandjaja on 24/01/24.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...recipe.rating, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
