//
//  ViewController.swift
//  ninjaGold
//
//  Created by David Rothschild on 1/7/16.
//  Copyright © 2016 Dave Rothschild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    
    func randomNumber(range: Range<Int> = 10...20) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    @IBAction func resetButton(sender: UIButton) {
        total_score = 0
        totalScore.text = String(total_score)
        farmLabel.text = ""
        caveLabel.text = ""
        houseLabel.text = ""
        casinoLabel.text = ""
    }

    @IBAction func buildButtonPressed(sender: UIButton) {
        switch sender.tag {
            
        case 1:
            caveLabel.text = ""
            houseLabel.text = ""
            casinoLabel.text = ""
            let num = randomNumber()
            total_score += num
            totalScore.text = String(total_score)
            farmLabel.text = "You have earned \(num)"
            
            
        case 2:
            farmLabel.text = ""
            houseLabel.text = ""
            casinoLabel.text = ""
            let num = randomNumber(5...10)
            total_score += num
            caveLabel.text = "You have earned \(num)"
            totalScore.text = String(total_score)
            
        case 3:
            farmLabel.text = ""
            caveLabel.text = ""
            casinoLabel.text = ""
            let num = randomNumber(2...5)
            total_score += num
            houseLabel.text = "You have earned \(num)"
            totalScore.text = String(total_score)
            
        case 4:
            farmLabel.text = ""
            caveLabel.text = ""
            houseLabel.text = ""
            let num = randomNumber(0...50)
            let earn_take = randomNumber(1...2)
            if earn_take == 1 {
                total_score += num
                totalScore.text = String(total_score)
                casinoLabel.textColor = UIColor.blackColor()
                casinoLabel.text = "You have earned \(num)"
            } else {
                total_score -= num
                totalScore.text = String(total_score)
                casinoLabel.textColor = UIColor.redColor()
                casinoLabel.text = "You have lost \(num)"
            }
            
        default:
            print("hit default case")
            
        }
        
    }
    
    var total_score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalScore.text = "0"
        var total_score = 0
        farmLabel.text = ""
        caveLabel.text = ""
        houseLabel.text = ""
        casinoLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

