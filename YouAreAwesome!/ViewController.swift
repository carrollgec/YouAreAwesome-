//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Grace Carroll on 1/31/21.
//
//To properly rename IBOutlet, refract, rename

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text=""
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let daMessage = "You Are Da Bomb!"
        
        if messageLabel.text == awesomeMessage{
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
        } else if messageLabel.text == greatMessage{
            messageLabel.text = daMessage
            imageView.image = UIImage(named: "image2")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
        
    }
    
   
    
}

