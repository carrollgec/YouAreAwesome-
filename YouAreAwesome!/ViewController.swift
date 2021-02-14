//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Grace Carroll on 1/31/21.
//
//To properly rename IBOutlet, refract, rename

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberImages = 9
    var audioPlayer: AVAudioPlayer!
    
    
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
        
        var newMessageNumber: Int
        repeat{
            newMessageNumber =  Int.random(in: 0...messages.count-1)
        }while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat{
            newImageNumber = Int.random(in: 0...totalNumberImages)
        }while imageNumber == newImageNumber
        
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
            //if not nil, create constant containing value to right of =
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("😡ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        }else{
            print("😡ERROR: Could not read data from file sound0")
        }
    }
}

