//
//  SkiDetailsView.swift
//  SnowSeekerMAS
//
//  Created by Andrey Matviets on 16.03.2023.
//

import SwiftUI

struct SkiDetailsView: View {
    var resort: Resort
    
    var body: some View {
        Group {
            VStack{
                Text("Elevation")
                    .font(.caption.bold())
                Text("\(resort.elevation)m")
                    .font(.title3)
            }
            
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}
