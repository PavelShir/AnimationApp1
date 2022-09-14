//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexey Efimov on 02.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var taxtLabel: UILabel!
    
    private let labelSetup = AnimatingTypes.getAnimationSetup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func animationButton(_ sender: SpringButton) {
        animationView.animation = "pop"
        animationView.animate()
        
    }
    
    
}

