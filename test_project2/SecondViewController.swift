//
//  SecondViewController.swift
//  test_project2
//
//  Created by macOS on 20.04.19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    @IBAction func additem(_ sender: Any) {
        
        if (item.text != "")
        {
            
        
        data.append(item.text!)
         item.text=""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

