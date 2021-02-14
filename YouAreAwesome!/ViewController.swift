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
    var soundNumber = -1
    let totalNumberImages = 10
    let totalNumberSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
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
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int{
        var newNumber: Int
        repeat{
            newNumber =  Int.random(in: 0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome",
                        "You are Great",
                        "You Are Fantastic!",
                        "When The Genuis Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got the Design  Skills of Jony Ive"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberSounds-1)
        playSound(name: "sound\(soundNumber)")
    }
}

