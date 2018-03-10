//
//  MatchViewController.swift
//  actividad#9
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit
import Foundation

class matchViewController : UIViewController{
    
    var YourPick: String = ""
    var TheActualPick: Int = -1
    @IBOutlet weak var MatchLabel: UILabel!
    @IBOutlet weak var Yourpick: UIImageView!
    @IBOutlet weak var PcsPick: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        converString()
        thePick()
}
    
    func thePick() -> Void {
        let randomNumber = Int(arc4random_uniform(3))
        if TheActualPick != randomNumber {
            if TheActualPick == 0 && randomNumber == 2 {
                self.Yourpick.image = UIImage(named: "Rocky")
                self.PcsPick.image = UIImage(named: "safety_scissors_red")
                self.MatchLabel.text = "You Win"
            }else if TheActualPick == 1 && randomNumber == 0 {
                self.Yourpick.image = UIImage(named: "pt-mugshot")
                self.PcsPick.image = UIImage(named: "Rocky")
                self.MatchLabel.text = "You Win"
            }else if TheActualPick == 2 && randomNumber == 1 {
                self.Yourpick.image = UIImage(named: "safety_scissors_red")
                self.PcsPick.image = UIImage(named: "pt-mugshot")
                self.MatchLabel.text = "You Win"
            } else if TheActualPick == 2 && randomNumber == 0 {
                self.Yourpick.image = UIImage(named: "Rocky")
                self.PcsPick.image = UIImage(named: "safety_scissors_red")
                self.MatchLabel.text = "You Lose"
            }else if TheActualPick == 0 && randomNumber == 1 {
                self.Yourpick.image = UIImage(named: "pt-mugshot")
                self.PcsPick.image = UIImage(named: "Rocky")
                self.MatchLabel.text = "You Lose"
            }else if TheActualPick == 1 && randomNumber == 2 {
                self.Yourpick.image = UIImage(named: "safety_scissors_red")
                self.PcsPick.image = UIImage(named: "pt-mugshot")
                self.MatchLabel.text = "You Lose"
            }else if TheActualPick == 0 && randomNumber == 0 {
                self.Yourpick.image = UIImage(named: "Rocky")
                self.PcsPick.image = UIImage(named: "Rocky")
                self.MatchLabel.text = "DRAW"
            }else if TheActualPick == 1 && randomNumber == 1 {
                self.Yourpick.image = UIImage(named: "pt-mugshot")
                self.PcsPick.image = UIImage(named: "pt-mugshot")
                self.MatchLabel.text = "DRAW"
            }
        } else {
            self.Yourpick.image = UIImage(named: "safety_scissors_red")
            self.PcsPick.image = UIImage(named: "safety_scissors_red")
            self.MatchLabel.text = "DRAW"
            
        }
    }
    func converString() {
        if YourPick == "piedra" {
            TheActualPick = 0
        }else if YourPick == "papel" {
            TheActualPick = 1
        } else if YourPick == "tijeras"{
            TheActualPick = 2
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
