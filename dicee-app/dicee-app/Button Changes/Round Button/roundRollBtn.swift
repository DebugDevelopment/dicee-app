//
//  roundButton.swift
//  statistic-survey
//
//  Created by Liam Gomez on 07/10/2018.
//  Copyright © 2018 Debug Development. All rights reserved.
//

import UIKit

class roundRollBtn: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowRadius = 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.cornerRadius = 20
        
    }
    
}

