//
//  CustomTableViewCell.swift
//  Memes
//
//  Created by ALYSSON DODO on 22/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    static  let identifier = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    func configCell(){
        
    }
}
