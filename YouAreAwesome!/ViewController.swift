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
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberImages = 9
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text=""
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome",
                        "You are Great",
                        "You Are Fantastic!",
                        "When The Genuis Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got the Design  Skills of Jony Ive"]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberImages))")

//        messageNumber += 1
//        if messageNumber == messages.count{
//            messageNumber = 0
//        }
        
        //let imageName = "image" + String(imageNumber)
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10{
//            imageNumber=0
//        }
        
//
//        if messageLabel.text == awesomeMessage{
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage{
//            messageLabel.text = daMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
        
    }
    
   
    
}

