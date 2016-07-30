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
    


}
