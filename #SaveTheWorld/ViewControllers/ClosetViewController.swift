//
//  ClosetViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/7/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

struct Stage {
    let text: String
    let end: Bool
    
}



class ClosetViewController: UIViewController {

    @IBOutlet var tapView: UIView!
    @IBOutlet weak var closetImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var homeButton: UIButton!
    
    let stages = [Stage(text: "Gay people matter", end: false),
                  Stage(text: "Obviously they are people", end: false),
                  Stage(text: "What is wrong with you?", end: false),
                  Stage(text: "Why do you feel the need to negatively affect the lives of others", end: false),
                  Stage(text: "Sort yourself out", end: true)]
    
    var current = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapAction(sender: AnyObject) {
        // Sets initial state after first tap
        if(current == 0){
            closetImage.hidden = true
            titleLabel.hidden = true
            messageTextView.hidden = false
            
            
//            messageTextView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        }
        // If the current stage is the last show the home button
        if(stages[current].end){
            messageTextView.text = stages[current].text
            messageTextView.textColor = UIColor(red: 255/255, green: 255/255, blue: 113/255, alpha: 1.0)
            homeButton.hidden = false
            
        }
        // Otherwise iterate through stages to show
        else{
            messageTextView.text = stages[current].text
            messageTextView.textColor = UIColor(red: 255/255, green: 255/255, blue: 113/255, alpha: 1.0)
            current += 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
