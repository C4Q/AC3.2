//
//  Person.swift
//  structsClassesExercises
//
//  Created by Erica Y Stevens on 9/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }
}




