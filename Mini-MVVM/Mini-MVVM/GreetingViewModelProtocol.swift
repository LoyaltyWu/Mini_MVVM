//
//  GreetingViewModelProtocol.swift
//  Mini-MVVM
//
//  Created by Wu on 2017/7/12.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation

protocol GreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set } // function to call when greeting did change
    init(person: Person)
    func showGreeting()
}
