//
//  RacismViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/6/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class RacismViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    
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
    // Clears the text view and result
    func textViewDidBeginEditing(textView: UITextView) {
        result.text = ""
        textView.text = ""
    }
    
    // Check if last typed character is the done key
    func textViewDidChange(textView: UITextView){
        if(textView.text.characters.last == Character("\n")){
            textView.resignFirstResponder()
            result.text = "That is pretty racist..."
        }
        
    }
    
}
