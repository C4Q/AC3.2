//
//  Person.swift
//  structsClassesExercises
//
//  Created by Cris on 9/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import Foundation

class Person{
    var name: String
    var born: Int
    var died: Int?

    init (name: String, born: Int, died: Int?){
        self.name = name
        self.born = born
        self.died = died
    }

}