//
//  BirdTableViewCell.swift
//  The Missouri Birder's Apprentice
//
//  Created by Laddipeerla,Karthik on 10/15/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

class BirdTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
