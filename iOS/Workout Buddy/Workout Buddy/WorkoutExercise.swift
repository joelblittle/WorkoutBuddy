//
//  WorkoutExercise.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/20/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//
//  This class is used in a Workout and is able to be adjusted for the Workout that
//  it is attached to.
//  This should not be confused with an Exercise as an Exercise object is just a name and a type.
//  Essentially a vanilla Exercise is just a blueprint to create WorkoutExercises for Workouts



import Foundation

class WorkoutExercise: NSObject {
    
    // MARK: - Variables
    var name: String
    var type: ExerciseType
    var order: Int // used in lists and so we don't have to deal with ordering the NoSQL data.
    var completed: Bool
    
    // MARK: Target goal variables
    var setsNeeded: Int?
    var repsNeeded: Int?
    var targetDuration: String? // Form should be "hh:mm:ss" for parsing
    var targetDistance: String? // Form should be a float i.e. "1.45". Units are miles.
    
    // MARK: Session/completion variables
    var duration: String? // Form should be "hh:mm:ss" for parsing
    var distance: String? // Form should be a float i.e. "1.45". Units are miles.
    var sets: [Set]? // Sets of the specific exercise
    
    // MARK: - Initialization
    init(name: String, type: ExerciseType, order: Int = 0, completed: Bool = false) {
        self.name = name
        self.type = type
        self.order = order
        self.completed = completed
    }
    
    init(exercise: Exercise, order: Int = 0, completed: Bool = false) {
        self.name = exercise.name
        self.type = exercise.type
        self.order = order
        self.completed = completed
    }
    
    // Used for testing in the early stages
    convenience override init() {
        let names = ["Bench", "Run", "Lunge"]
        var name: String
        var type: ExerciseType
        let random = Int(arc4random_uniform(3))
        
        switch random {
        case ExerciseType.lift.rawValue:
            name = names[random]
            type = ExerciseType.lift
            
        case ExerciseType.cardio.rawValue:
            name = names[random]
            type = ExerciseType.cardio

        case ExerciseType.stretch.rawValue:
            name = names[random]
            type = ExerciseType.stretch
        default:
            name = names[random]
            type = ExerciseType.lift
        }
        
        self.init(name: name, type: type)
    }
}
