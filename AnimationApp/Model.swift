//
//  Model.swift
//  AnimationApp
//
//  Created by 19543442 on 14.09.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Foundation

struct AnimatingTypes {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

}

extension AnimatingTypes {

    static func getAnimationSetup() -> [AnimatingTypes] {
            
        var animationTypes = [AnimatingTypes]()
        let data = Data()
            
        let presetShuffled = data.presets.shuffled()
        let curveShuffled = data.curves.shuffled()
        let forceShuffled = data.forces.shuffled()
        let durationShuffled = data.durations.shuffled()
        let delayShuffled = data.delays.shuffled()
        
        let itarationCount = min(
            presetShuffled.count,
            curveShuffled.count,
            forceShuffled.count,
            durationShuffled.count,
            delayShuffled.count
        )
        
        for index in 0..<itarationCount {
            
                animationTypes.append(
                    AnimatingTypes(
                    preset: presetShuffled[index],
                    curve: curveShuffled[index],
                    force: forceShuffled[index],
                    duration: durationShuffled[index],
                    delay: delayShuffled[index]
                    ))
            }
         return animationTypes
        }
    }

