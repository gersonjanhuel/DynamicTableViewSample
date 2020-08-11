//
//  TableViewCellText.swift
//  DynamicTableViewSample
//
//  Created by Gerson Janhuel on 11/08/20.
//  Copyright © 2020 Elcode Studio. All rights reserved.
//

import UIKit

class TableViewCellText: UITableViewCell {

    @IBOutlet weak var tfBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tfBackground.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
