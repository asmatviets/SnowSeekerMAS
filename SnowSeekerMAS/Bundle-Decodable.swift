//
//  Bundle-Decodable.swift
//  SnowSeekerMAS
//
//  Created by Andrey Matviets on 16.03.2023.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to use url\(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load data \(file) from bundle")
        }
        
        guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        return decoded
    }
}
