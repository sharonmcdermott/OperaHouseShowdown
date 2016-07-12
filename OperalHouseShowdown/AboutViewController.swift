//
//  AboutViewController.swift
//  OperalHouseShowdown
//
//  Created by Sharon's Mac on 6/29/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    

    @IBOutlet weak var textView: UITextView!
    
    
//    i = [String]
//    i = "Graphic Images Credits"
//    
//    "stairs with red carpet
//    <a href= http://www.freepik.com/free-vector/stairs-with-a-red-carpet_797293.htm >Designed by Freepik</a>
//    Designed by Freepik"
//    
//    "Nice boy singing in the bathroom
//    <a href='http://www.freepik.com/free-vector/nice-boy-singing-in-the-bathroom_846831.htm'>Designed by Freepik</a>"
//    
//    "kids making art in flat design
//    <a href='http://www.freepik.com/free-vector/kids-making-art-in-flat-design_848534.htm'>Designed by Freepik</a>"
//    
//    "barbers singing
//    <a href='http://www.freepik.com/free-vector/barbers-singing_796534.htm'>Designed by Freepik</a>"
//    
//    "children artists set
//    <a href='http://www.freepik.com/free-vector/children-artists-set_847457.htm'>Designed by Freepik</a>"
//
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Close(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
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
