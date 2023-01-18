//
//  ViewController.swift
//  Hello World
//
//  Created by Jerry Zhang on 1/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("I am inside viewDidLoad() function")
    }
    
    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Hello World"
    }
    

}
