//
//  GreetingViewController.swift
//  Mini-MVVM
//
//  Created by Wu on 2017/7/12.
//  Copyright © 2017年 Wu. All rights reserved.
//

import UIKit

import UIKit

class GreetingViewController : UIViewController {
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }

    @IBOutlet weak var showGreetingButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.showGreetingButton.addTarget(self.viewModel, action: #selector(self.viewModel.showGreeting), for: .touchUpInside)
        self.showGreetingButton.addTarget(self.viewModel, action: Selector("showGreeting"), for: .touchUpInside)
        // self.showGreetingButton.addTarget(self.viewModel, action: #selector(self.fun),for: .touchUpInside)
    }
    // layout code goes here

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
