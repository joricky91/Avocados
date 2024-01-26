//
//  RipeningModel.swift
//  Avocados
//
//  Created by Jonathan Ricky Sandjaja on 26/01/24.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

