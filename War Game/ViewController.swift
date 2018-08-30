//
//  ViewController.swift
//  War Game
//
//  Created by Filip on 27.07.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageCard: UIImageView!
    
    @IBOutlet weak var rightImageCard: UIImageView!
    
    @IBOutlet weak var leftPlayerScore: UILabel!
    
    @IBOutlet weak var rightPlayerScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    @IBAction func dealButton(_ sender: Any) {
        //Long way
        /*let cardArray:Array = ["card2" , "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card14"]
      

        let leftPlayerRoll = Int(arc4random_uniform(13))
        let rightPlayerRoll = Int(arc4random_uniform(13))
        let leftPlayerCardRoll = cardArray[leftPlayerRoll]
        let rightPlayerCardRoll = cardArray[rightPlayerRoll]
        print(rightPlayerCardRoll)
        print(leftPlayerCardRoll)
        
        leftImageCard.image = UIImage(named: leftPlayerCardRoll)
        rightImageCard.image = UIImage(named: rightPlayerCardRoll)
        */
        
        //Short way
        
        let leftPlayerRoll = arc4random_uniform(14)+2
        let rightPlayerRoll = arc4random_uniform(14)+2
        print(leftPlayerRoll)
        print(rightPlayerRoll)
        
        leftImageCard.image = UIImage(named: "card\(leftPlayerRoll)")
        rightImageCard.image = UIImage(named: "card\(rightPlayerRoll)")
        
        
        if leftPlayerRoll > rightPlayerRoll {
            
            leftScore += 1
            leftPlayerScore.text = String(leftScore)
            
        } else if rightPlayerRoll > leftPlayerRoll {
            
            rightScore += 1
            rightPlayerScore.text = String(rightScore)
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

