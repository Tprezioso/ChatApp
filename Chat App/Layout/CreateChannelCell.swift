//
//  CreateChannelCell.swift
//  Chat App
//
//  Created by Thomas Prezioso on 4/17/18.
//  Copyright © 2018 Thomas Prezioso. All rights reserved.
//

import UIKit

class CreateChannelCell: UITableViewCell {
    @IBOutlet var newChannelNameField: UITextField!
    
    @IBAction func newChannelButton(_ sender: Any) {
    }
    
    @IBOutlet var newChannelButtonOutlet: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
