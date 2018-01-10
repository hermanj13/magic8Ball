//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jake Herman on 1/10/18.
//  Copyright © 2018 Jake Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var magicBallRandom : Int = 0
    
    @IBOutlet weak var magicBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func questionAskedButton(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        magicBallRandom = Int(arc4random_uniform(5) + 1)
        
        magicBallImage.image = UIImage(named: "ball" + String(magicBallRandom))
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

