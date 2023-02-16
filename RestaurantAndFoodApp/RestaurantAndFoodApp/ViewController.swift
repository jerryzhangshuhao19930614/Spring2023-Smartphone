//
//  ViewController.swift
//  RestaurantAndFoodApp
//
//  Created by Jerry Zhang on 2/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    // list of restaurants
    let restaurants = ["Palace Korean BBQ",
                       "Din Tai Fung",
                       " Maggiano's",
                       "Facing East",
                       "Japonessa Sushi Cocina",
                       "Bai Tong Thai Restaurant"
                        ]
    
    // food corresponding to each restaurant
    let food = [["Buffalo Style Chicken Egg Rolls","Grilled Shrimp","Caesar Salad","House Salad","CheesesteakSandwich","Buffalo Style Chicken Egg Rolls","Grilled Shrimp","Caesar Salad","House Salad","CheesesteakSandwich"],
                ["Chicken and rice","Pulled BBQ chicken","Pot roast","Crockpot salsa chicken","Ribs","Chicken and rice","Pulled BBQ chicken","Pot roast","Crockpot salsa chicken","Ribs"],
                ["Homemade pizza","Twice-baked potatoes","Shepherd's pie","Enchiladas","French bread pizza","Shepherd's pie","Enchiladas","French bread pizza"],
                ["Salmon patties","Crab cakes","Fish ‘n chips","Salmon patties","Fish tacos","Shepherd's pie","Enchiladas","French bread pizza"],
                ["Clam chowder","White chicken chili","Tortellini soup","Cheeseburger soup","Jambalaya","Clam chowder","White chicken chili","Tortellini soup",],
                ["Tortellini","Manicotti","Vegetable lasagna","Rotini bake","Crockpot Alfredo lasagna","Chicken and rice","Pulled BBQ chicken","Pot roast","Crockpot salsa chicken","Ribs"]
                ]
    
    // an empty list to store new generated food for coreesponding restaurant
    var foodItems : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // how many rows we want to show in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // rows for tblViewTop
        if tableView == tblViewTop {
            return restaurants.count
        }
        
        // rows for tblViewBottom
        if foodItems.count == 0 {
//            print(foodItems.count)
            return 0
        }
        else{
//            print(foodItems.count)
            return foodItems.count
        }
    }
    
    // handle cells shown - data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // handle tbltop cells
        if tableView == tblViewTop {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellRestaurant", for: indexPath)

            cell.textLabel?.text = restaurants[indexPath.row]
            
            return cell
        }
        // handle tblbottom cells
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellFood", for: indexPath)
            
            if foodItems.count > 0 {
                cell.textLabel?.text = foodItems[indexPath.row]
            }
            // return default empty
            return cell
        }
    }
    
    // indexPath [0,0]...[0,len - 1]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // get tblViewTop corresponding row number
        if tableView == tblViewTop {
            // get the food list for restaurant to item
            let item = food[indexPath.row]
            
            // parse to foodItems
            foodItems = item
            
            self.tblViewBottom.reloadData()
        }
        
    }
    
    
     

}

