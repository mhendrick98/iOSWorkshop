//
//  ViewController.swift
//  WorkshopQuiz
//
//  Created by Michael Hendrick on 3/21/19.
//  Copyright © 2019 Michael Hendrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var cs111: UISwitch!
    
    @IBOutlet weak var cs507: UISwitch!
    @IBOutlet weak var cs237: UISwitch!
    @IBOutlet weak var cs411: UISwitch!
    @IBOutlet weak var name: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewControllerResponse{
            let nextVC = segue.destination as? ViewControllerResponse
            nextVC?.cs111 = cs111.isOn
            nextVC?.cs237 = cs237.isOn
            nextVC?.cs411 = cs411.isOn
            nextVC?.cs507 = cs507.isOn
            if let name = name.text {
                nextVC?.name = name
            } else {
                nextVC?.name = "No name!"
            }
        }
    }
    
}

