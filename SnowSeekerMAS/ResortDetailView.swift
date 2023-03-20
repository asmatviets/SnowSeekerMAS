//
//  ResortDetailView.swift
//  SnowSeekerMAS
//
//  Created by Andrey Matviets on 16.03.2023.
//

import SwiftUI

struct ResortDetailView: View {
    let resorts: Resort
    
    var size: String {
        switch resorts.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    
    var price: String {
        String(repeating: "$", count: resorts.price)
    }
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ResortDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailView(resorts: Resort.example)
    }
}
