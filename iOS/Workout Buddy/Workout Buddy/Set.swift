//
//  Set.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/20/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//


struct Set {

    var order: Int
    var reps: Double?
    var weight: Double?
    
    init(order: Int, reps: Double?, weight: Double?) {
        self.order = order
        self.reps = reps
        self.weight = weight
    }
    
    init() {
        self.init(order: 0, reps: nil, weight: nil)
    }
}

