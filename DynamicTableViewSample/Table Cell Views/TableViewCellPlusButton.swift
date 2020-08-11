//
//  TableViewCellPlusButton.swift
//  DynamicTableViewSample
//
//  Created by Gerson Janhuel on 11/08/20.
//  Copyright © 2020 Elcode Studio. All rights reserved.
//

import UIKit

protocol TableViewCellPlusButtonDelegate: class {
    func didTapTheButton()
}

class TableViewCellPlusButton: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    weak var delegate: TableViewCellPlusButtonDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        button.layer.cornerRadius = button.frame.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        // send the message to whoever observe this delegate
        delegate.didTapTheButton()
    }
}
