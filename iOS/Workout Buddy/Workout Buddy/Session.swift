//
//  Session.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/21/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//

import Foundation

class Session: NSObject {

    // MARK: - Variables
    var uuid: String
    var workout: Workout
    var completedExercises: [WorkoutExercise]
    var dateStarted: Date
    
    var dateCompleted: Date?
    
    // MARK: - Initialization
    init(uuid: String, workout: Workout, completedExercises: [WorkoutExercise], dateCompleted: Date?) {
        self.uuid = uuid
        self.workout = workout
        self.completedExercises = completedExercises
        self.dateStarted = Date()
        self.dateCompleted = dateCompleted
    }
    
}
