//
//  ToDoListTableViewCell.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deadLineLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
