//
//  FullData.swift
//  Spring
//
//  Created by MacBook Pro on 17.09.2022.
//

import Foundation

struct FullData {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var fulldata: String {
        """
        preset:\(preset)
        curve:\(curve)
        force: \(force)
        duration: \(duration)
        delay:  \(delay)
        """
    }
}
 
    extension FullData {
        
        static func getAnimation() -> FullData {
                FullData(
                    preset: DataStore.shared.presets.randomElement()?.rawValue ?? "slideLeft",
                    curve: DataStore.shared.curves.randomElement()?.rawValue ?? "spring",
                    force: Double.random(in: 0.5...1),
                    duration: Double.random(in: 0.5...1.2),
                    delay: 0.5
                )
                    
        }
    }
