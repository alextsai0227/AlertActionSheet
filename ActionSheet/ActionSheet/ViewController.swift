//
//  ViewController.swift
//  ActionSheet
//
//  Created by 蔡舜珵 on 2016/6/13.
//  Copyright © 2016年 蔡舜珵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertAction(sender: AnyObject) {
        let alert2 = UIAlertController(title: "Question2", message: "想跟誰戀愛", preferredStyle: .ActionSheet)
        
        let nameAction1 = UIAlertAction(title: "Angela", style: .Default, handler: nil)
        let nameAction2 = UIAlertAction(title: "Ariel", style: .Default, handler: nil)
        let nameAction3 = UIAlertAction(title: "Alice", style: .Default, handler: nil)
        alert2.addAction(nameAction1)
        alert2.addAction(nameAction2)
        alert2.addAction(nameAction3)
        let alert = UIAlertController(title: "Question", message: "想戀愛嗎？", preferredStyle: .Alert)
        let noAction = UIAlertAction(title: "NO", style: .Default, handler: nil)
        let yesAction = UIAlertAction(title: "YES", style: .Default){UIAlertAction in
            self.presentViewController(alert2, animated: true, completion: nil)
        }
        
        alert.addAction(noAction)
        alert.addAction(yesAction)
        self.presentViewController(alert, animated: true, completion: nil)
        
    }

}

