//
//  ViewController.swift
//  segway
//
//  Created by Suraj B on 11/24/17.
//  Copyright © 2017 CZSM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var text: UITextField!
    
    @IBAction func start(_ sender: Any) {
        
        if text.text != ""
        {
           performSegue(withIdentifier: "go", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          var secondVc = segue.destination as! SecondViewController
          secondVc.myString = text.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

} //class

