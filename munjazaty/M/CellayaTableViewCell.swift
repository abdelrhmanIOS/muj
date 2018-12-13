//
//  CellayaTableViewCell.swift
//  munjazaty
//
//  Created by obada on 12/13/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class CellayaTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var titel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
