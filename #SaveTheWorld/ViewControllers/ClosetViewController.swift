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
    let begin: Bool
    let end: Bool
    
}



class ClosetViewController: UIViewController {

    @IBOutlet var tapView: UIView!
    @IBOutlet weak var closeImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let stages = [Stage(text: "Gay people matter", begin: true, end: false)]
    
    var current = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add tap gesture recognizer
        let tap = UIGestureRecognizer(target: self, action: #selector(tappedView))
        tapView.addGestureRecognizer(tap)
    }

    func tappedView(){
        if(current == 0){
            
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
