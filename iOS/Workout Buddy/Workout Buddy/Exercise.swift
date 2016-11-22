//
//  Exercise.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/20/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//

import Foundation

enum ExerciseType: Int {
    case lift
    case cardio
    case stretch
}

class Exercise: NSObject {

    // MARK: - Variables
    var type: ExerciseType
    var name: String
    
    // MARK: - Initialization
    init(name: String, type: ExerciseType) {
        self.name = name
        self.type = type
    }
    
    convenience override init() {
        self.init(name:"", type: .cardio)
    }
    
    convenience init(random: Bool = false) {
        
        let names = ["Bench", "Run", "Lunge"]
        var name: String
        var type: ExerciseType
        
        if random {
            let randNum = Int(arc4random_uniform(3))
            
            switch randNum {
            case ExerciseType.lift.rawValue:
                name = names[randNum]
                type = ExerciseType.lift
                
            case ExerciseType.cardio.rawValue:
                name = names[randNum]
                type = ExerciseType.cardio
                
            case ExerciseType.stretch.rawValue:
                name = names[randNum]
                type = ExerciseType.stretch
            default:
                name = names[randNum]
                type = ExerciseType.lift
            }
            
            self.init(name:name, type: type)
            
        } else {
            self.init(name:"", type: .cardio)
        }
        
    }
}
