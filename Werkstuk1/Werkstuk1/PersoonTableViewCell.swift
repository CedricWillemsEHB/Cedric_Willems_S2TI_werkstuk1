//
//  PersoonTableViewCell.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 24/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit

class PersoonTableViewCell: UITableViewCell {
    //MARK: Properties
    //Bron: https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/CreateATableView.html
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var naamlbl: UILabel!
    @IBOutlet weak var voornaamlbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
