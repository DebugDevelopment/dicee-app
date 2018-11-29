//
//  ViewController.swift
//  dicee-app
//
//  Created by Liam Gomez on 22/11/2018.
//  Copyright © 2018 Debug Development. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    let diceChooser = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var diceRandomizerOne: Int = 0
    var diceRandomizerTwo: Int = 0

    
    @IBOutlet weak var diceOneImg: UIImageView!
    @IBOutlet weak var diceTwoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateDiceImage()
    }
    
    func updateDiceImage() {
        
        diceRandomizerOne = Int.random(in: 0 ... 5)
        diceRandomizerTwo = Int.random(in: 0 ... 5)
        
        diceOneImg.image = UIImage(named: diceChooser[diceRandomizerOne])
        diceTwoImg.image = UIImage(named: diceChooser[diceRandomizerTwo])
        
    }
    
    @IBAction func rollBtnPressed(_ sender: Any) {
        
        updateDiceImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
}

