//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Grace Carroll on 1/31/21.
//
//To properly rename IBOutlet, refract, rename

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(" 😃 viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print(" 😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

