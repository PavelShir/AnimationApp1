//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexey Efimov on 02.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Spring
import Darwin

class ViewController: UIViewController {
    
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var taxtLabel: UILabel!
    @IBOutlet var animButton: SpringButton!
    
    private let labelSetup = AnimatingTypes.getAnimationSetup()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelsText()
        animButton.setTitle(labelSetup[index].preset, for: .normal)
    }
    
    private func setLabelsText() {
        taxtLabel.text = """
            \(labelSetup[index].preset)
            \(labelSetup[index].curve)
            \(labelSetup[index].force)
            \(labelSetup[index].duration)
            \(labelSetup[index].delay)
        """
    }
    
    @IBAction func animationButton(_ sender: SpringButton) {
            animationView.animation = labelSetup[index].preset
            animationView.curve = labelSetup[index].curve
            animationView.force = labelSetup[index].force
            animationView.duration = labelSetup[index].duration
            animationView.delay = labelSetup[index].delay
            
        setLabelsText()
        animationView.animate()
        
        index += 1
        
        if index >= labelSetup.count {
            index = 0
        }
        
        sender.setTitle(labelSetup[index].preset, for: .normal)
    }
    
    
}

