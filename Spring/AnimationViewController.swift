//
//  ViewController.swift
//  Spring
//
//  Created by MacBook Pro on 14.09.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var fullDataLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    override func viewDidLoad() {
        fullDataLabel.text = animation.fulldata
    }
       
    
    
    private var animation = FullData.getAnimation()


    @IBAction func animationButton(_ sender: UIButton) {
        fullDataLabel.text = animation.fulldata
     
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
      
        
    }
}

