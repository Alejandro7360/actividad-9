//
//  ViewController.swift
//  actividad#9
//
//  Created by Alumno IDS on 09/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rockButton(_ sender: UIButton) {
        
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        
    }
    
    @IBAction func scissorButton(_ sender: UIButton) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newView = segue.destination as! matchViewController
        switch segue.identifier {
        case "rockButton"?:
            newView.YourPick = "piedra"
        case "paperButton"?:
            newView.YourPick = "papel"
        default:
            newView.YourPick = "tijeras"
        }
    }
}

