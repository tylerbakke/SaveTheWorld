//
//  RacismViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/6/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class RacismViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkOnPress(sender: AnyObject) {
        resultLabel.text = "That is probably racist..."
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension RacismViewController: UITextViewDelegate{
}
