//
//  Workout.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/20/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//

import Foundation

class Workout: NSObject {
    
    // MARK: - Variables
    var name: String
    var sessionCount: Int
    var sessions: [Session]?
    var exercises: [WorkoutExercise]?
    
    // MARK: - Initialization
    init(name: String, sessions: [Session]?, exercises: [WorkoutExercise]?, sessionCount: Int = 0 ) {
        self.name = name
        self.sessions = sessions
        self.exercises = exercises
        self.sessionCount = sessionCount
    }
    
}
