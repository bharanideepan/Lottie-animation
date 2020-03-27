//
//  ViewController.swift
//  Lottie_animation
//
//  Created by Bharani on 27/03/20.
//  Copyright © 2020 bharani. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startAnimation(animation: String) {
        let animation = Animation.named(animation)
        animationView.animation = animation
        animationView.loopMode = .playOnce
        animationView.play()
    }
    @IBAction func startFireWork(_ sender: UIButton) {
        self.startAnimation(animation: "1801-fireworks")
    }
    @IBAction func startBubble(_ sender: UIButton) {
        self.startAnimation(animation: "94-soda-loader")
    }
    @IBAction func sayHi(_ sender: UIButton) {
        let animationView = AnimationView(name: "4340-pew-pew")
        animationView.frame = self.view.frame
        animationView.contentMode = .scaleAspectFill
        animationView.isUserInteractionEnabled = false
        view.addSubview(animationView)
        animationView.play()
    }
    
}
