//
//  TableViewCell.swift
//  CustomTableViewWithXIB
//
//  Created by Jerry Zhang on 2/15/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // create Image and label variable target to UI
    @IBOutlet weak var imageContainer: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
