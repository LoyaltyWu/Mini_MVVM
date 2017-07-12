//
//  Person.swift
//  Mini-MVVM
//
//  Created by Wu on 2017/7/12.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation

class Person{ // Model
    var firstName: String?
    var lastName: String?
    init(){
        firstName = "David"
        lastName = "Blaine"
    }
    init(first:String,last:String){
        firstName = first
        lastName = last
    }
}
