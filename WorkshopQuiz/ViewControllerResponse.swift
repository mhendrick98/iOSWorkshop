//
//  ViewControllerResponse.swift
//  WorkshopQuiz
//
//  Created by Michael Hendrick on 3/21/19.
//  Copyright © 2019 Michael Hendrick. All rights reserved.
//

import UIKit

class ViewControllerResponse: UIViewController {
    
    var cs111 = false
    var cs237 = false
    var cs507 = false
    var cs411 = false
    var name = ""
    
    func determineYear() {
        let appendName = name + ", "
        if(cs507 == true){
            response.text = appendName + "You are a Senior!"
            return
        }
        if(cs411 == true){
            response.text = appendName + "You are a Junior!"
            return
        }
        if(cs237 == true){
            response.text = appendName + "You are a Sophomore!"
            return
        }
        if(cs111 == true){
            response.text = appendName + "You are a Freshman!"
            return
        }
        response.text = "You are not a major!"
        return
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        determineYear()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var response: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
