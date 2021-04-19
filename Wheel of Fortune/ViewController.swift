//
//  ViewController.swift
//  Wheel of Fortune
//
//  Created by Mac on 18.04.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

//    result ImageView and UILabel
    @IBOutlet weak var movieChoise: UIImageView!
    @IBOutlet weak var cookieText: UILabel!
    @IBOutlet weak var magicBall: UIImageView!
    
//Action Buttons for chose movie and play sound func
//Movie screen
    @IBAction func redButton(_ sender: UIButton) {
        movieChoise.image = #imageLiteral(resourceName: "Group 14")
        playSound3()
    }
    @IBAction func orangeButton(_ sender: UIButton) {
        let orangeArray = [#imageLiteral(resourceName: "glad"), #imageLiteral(resourceName: "run")]
        movieChoise.image = orangeArray.randomElement()
        playSound3()
    }
    @IBAction func yellowButton(_ sender: UIButton) {
        let yellowArray = [#imageLiteral(resourceName: "aveng"), #imageLiteral(resourceName: "zorro")]
        movieChoise.image = yellowArray.randomElement()
        playSound3()
    }
    @IBAction func greenButton(_ sender: UIButton) {
        let greenArray = [#imageLiteral(resourceName: "gren"), #imageLiteral(resourceName: "figure")]
        movieChoise.image = greenArray.randomElement()
        playSound3()
    }
    @IBAction func lightBlueButton(_ sender: UIButton) {
        let lightBlueArray = [#imageLiteral(resourceName: "froz"), #imageLiteral(resourceName: "lion")]
        movieChoise.image = lightBlueArray.randomElement()
        playSound3()
    }
    @IBAction func Blue(_ sender: UIButton) {
        let blueArray = [#imageLiteral(resourceName: "hp"), #imageLiteral(resourceName: "game")]
        movieChoise.image = blueArray.randomElement()
        playSound3()
    }
    @IBAction func purpuleButton(_ sender: UIButton) {
        let purpuleArray = [#imageLiteral(resourceName: "turn"), #imageLiteral(resourceName: "Asta")]
        movieChoise.image = purpuleArray.randomElement()
        playSound3()
    }
    @IBAction func whiteButton(_ sender: UIButton) {
        let whiteArray = [#imageLiteral(resourceName: "game2"), #imageLiteral(resourceName: "grown")]
        movieChoise.image = whiteArray.randomElement()
        playSound3()
    }
   
    
//    Action Button for Cookie Screen, arrays with random answers and sound func
    @IBAction func cookiePressed(_ sender: UIButton) {
        
        let cookieWish = ["All the effort you are making will ultimately pay off.", "Advice, when most needed, is least heeded.", "Advice is like kissing. It costs nothing and is a pleasant thing to do.", "Adventure can be real happiness.", "Accept something that you cannot change, and you will feel better.", "A beautiful, smart, and loving person will be coming into your life.", "A dubious friend may be an enemy in camouflage.", "A faithful friend is a strong defense.", "A feather in the hand is better than a bird in the air.", "A fresh start will put you on your way.", "A friend asks only for your time not your money.", "A friend is a present you give yourself.", "A gambler not only will lose what he has, but also will lose what he doesn’t have.","A golden egg of opportunity falls into your lap this month.", "A good friendship is often more important than a passionate romance.", "A good time to finish up old tasks.", "A hunch is creativity trying to tell you something.", "A lifetime friend shall soon be made.", "A lifetime of happiness lies ahead of you.", "A light heart carries you through all the hard times.", "A new perspective will come with the new year.", "A person is never to old to learn.", "A person of words and not deeds is like a garden full of weeds.","A pleasant surprise is waiting for you.", "A short pencil is usually better than a long memory any day.", "A small donation is call for. It’s the right thing to do.","A smile is your personal welcome mat.", "A smooth long journey! Great expectations.", "A soft voice may be awfully persuasive.", "A truly rich life contains love and art in abundance."]
        cookieText.text = cookieWish.randomElement()
        playSound2()
        
    }
//    Action Button for Magic Ball 8 for random answer and play sound func
    @IBAction func shakeButton(_ sender: UIButton) {
        
        let magicImage = [ #imageLiteral(resourceName: "Group 30"), #imageLiteral(resourceName: "Group 28"), #imageLiteral(resourceName: "Group 33"), #imageLiteral(resourceName: "Group 34"), #imageLiteral(resourceName: "Group 31"), #imageLiteral(resourceName: "Group 29"), #imageLiteral(resourceName: "Group 31") ]
        magicBall.image = magicImage.randomElement()
        playSound()
    }

//    All funcs for sound after click
    func playSound() {
    let url = Bundle.main.url(forResource: "magicBall", withExtension: "mp3")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
    }
    func playSound2() {
    let url = Bundle.main.url(forResource: "cookies", withExtension: "mp3")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
    }
    func playSound3() {
    let url = Bundle.main.url(forResource: "movie", withExtension: "mp3")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
    }
    
}



