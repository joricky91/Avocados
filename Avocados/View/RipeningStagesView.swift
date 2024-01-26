//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Jonathan Ricky Sandjaja on 19/01/24.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 24) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
