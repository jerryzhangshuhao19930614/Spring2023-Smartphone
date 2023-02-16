//
//  ViewController.swift
//  CustomTableViewWithXIB
//
//  Created by Jerry Zhang on 2/15/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    let imageNames = ["Ramen Noodles", "Cheeseburger", "Hawaiian Chicken Pizza Smoked", "Grilled Steak", "Seafood Pasta", "Deep Fried Cheese Curds", "Rice dumplings", "Xiao Long Bao", "Avocado Sushi","Salmon and Zucchini"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        // set image and label to corresponding info
        cell.imageContainer.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        
        return cell
    }
    


}

