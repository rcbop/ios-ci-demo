//
//  SuccessViewController.swift
//  MyCIDemo
//
//  Created by Rogerio Peixoto on 10/6/16.
//  Copyright © 2016 TestInc. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBAction func btnBack2(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
