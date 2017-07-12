//
//  GreetingViewModel.swift
//  Mini-MVVM
//
//  Created by Wu on 2017/7/12.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation
// in the blog, maybe the writer miss the "NSObject"
class GreetingViewModel :NSObject, GreetingViewModelProtocol {
    let person: Person
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    required init(person: Person) {
        self.person = person
    }
    func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName! + " " + self.person.lastName!
    }
}
