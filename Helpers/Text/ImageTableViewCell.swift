//
//  ImageTableViewCell.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 15/9/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var profileKevin: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
