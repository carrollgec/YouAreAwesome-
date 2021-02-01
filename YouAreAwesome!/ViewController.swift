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
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print(" 😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        print("🤩The other message button was pressed!")
        messageLabel.text = "You're Great!"
    }
}

