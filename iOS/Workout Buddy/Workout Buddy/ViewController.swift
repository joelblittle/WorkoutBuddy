//
//  ViewController.swift
//  Workout Buddy
//
//  Created by Robert Barber on 11/19/16.
//  Copyright © 2016 Robert Barber. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ref = FIRDatabase.database().reference()
        
        ref.child("test").removeValue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

