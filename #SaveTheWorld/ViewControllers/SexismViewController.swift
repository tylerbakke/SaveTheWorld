//
//  SexismViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/7/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class SexismViewController: UIViewController {

    @IBOutlet weak var sexistTextVew: UITextView!
    
    var comments: [String] = []
    var current: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignComments()
        current = Int(arc4random_uniform(UInt32(comments.count)))
        print(current)
        sexistTextVew.text = comments[current]
    }
    
    @IBAction func yesButtonPress(sender: AnyObject) {
        displayComment()
    }
    
    @IBAction func noButtonPress(sender: AnyObject) {
        displayComment()
    }
    
    func assignComments(){
        comments.append("lol")
    }
    
    func displayComment(){
        
        sexistTextVew.text = comments[current]
        current+=1
        
        // Wrap around the array TEMP
        if(current == comments.count){
            current = 0
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
