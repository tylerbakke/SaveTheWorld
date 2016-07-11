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
        sexistTextVew.text = comments[current]
    }
    
    @IBAction func yesButtonPress(sender: AnyObject) {
        displayComment()
    }
    
    @IBAction func noButtonPress(sender: AnyObject) {
        displayComment()
    }
    
    func assignComments(){
        comments.append("You throw like a girl.")
        comments.append("Claiming she was raped? What was she wearing?")
        comments.append("Engineers can be any gender.")
        comments.append("He doesn’t like sports? Is he gay?")
        comments.append("That’s just the way things are.")
        comments.append("All genders should be paid equally.")
        comments.append("Who is the CEO? What is his name?")
        comments.append("Women shouldn’t be told to be more careful. Men should be told not to harm women.")
        comments.append("Men are better in leadership positions.")
        comments.append("Feminists are not man haters.")
        comments.append("If the mom is working, who will take care of the kids?")
    }
    
    func displayComment(){
        current+=1
        
        // Wrap around the array TEMP
        if(current == comments.count){
            current = 0
        }
        
        sexistTextVew.text = comments[current]
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
