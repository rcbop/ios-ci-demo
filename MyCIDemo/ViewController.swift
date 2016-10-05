//
//  ViewController.swift
//  MyCIDemo
//
//  Created by Rogerio Peixoto on 10/5/16.
//  Copyright © 2016 TestInc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qweMyLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        if let dict = myDict {
            print(dict)
            // Use your dict here
            self.qweMyLabel.text = dict["LABEL_CONTENT"] as! String
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

