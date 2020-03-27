//
//  SecondViewController.swift
//  Lottie_animation
//
//  Created by Bharani on 27/03/50.
//  Copyright © 2020 bharani. All rights reserved.
//

import UIKit
import Lottie

class SecondViewController: UIViewController {

    var animations: [String] = ["94-soda-loader", "1801-fireworks", "4340-pew-pew"]
    var subView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startAnimation(animation: String) {
        let animationView = AnimationView(name: animation)
        animationView.frame = self.view.frame
        animationView.contentMode = .scaleAspectFill
        animationView.isUserInteractionEnabled = false
        view.addSubview(animationView)
        animationView.play()
    }
    func stop() {
        self.view.willRemoveSubview(self.subView)
    }

}
extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = animations[indexPath.row]
        return cell
    }
    
}
extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath),
            let textLabel = cell.textLabel,
            let text = textLabel.text {
            self.startAnimation(animation: text)
        }
    }
}
