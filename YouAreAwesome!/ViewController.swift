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
        messageLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "image0")
        
    }
    
   
    
}

