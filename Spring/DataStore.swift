//
//  DataStore.swift
//  Spring
//
//  Created by MacBook Pro on 17.09.2022.
//
import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    var presets: [AnimationPreset] = [
        .slideLeft,
        .fadeInRight,
        .fadeInDown,
        .squeezeUp
    ]
    var curves: [AnimationCurve] = [
        .easeIn,
        .easeInBack,
        .easeInExpo,
        .easeInCirc
    ]
    
   
    
    private init() {}
}
