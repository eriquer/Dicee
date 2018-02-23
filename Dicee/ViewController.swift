//
//  ViewController.swift
//  Dicee
//
//  Created by Eduardo De Riquer on 21/2/18.
//  Copyright © 2018 Eduardo De Riquer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
 
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       self.generateRandomDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        generateRandomDices()
    }
    
    func generateRandomDices() {
        randomDiceIndex1 = 1 + Int(arc4random_uniform(6))
        randomDiceIndex2 = 1 + Int(arc4random_uniform(6))
    
        let fileDice1:String = "dice" + String(randomDiceIndex1)
        let fileDice2:String = "dice" + String(randomDiceIndex2)
    
        diceImageView1.image = UIImage(named:fileDice1)
        diceImageView2.image = UIImage(named:fileDice2)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("Ended")
        generateRandomDices()
    }
}

