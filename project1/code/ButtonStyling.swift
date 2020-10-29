//
//  ButtonStyling.swift
//  SEAA Client
//
//  Created by Naveen Yellamraju on 01/09/20.
//  Copyright © 2020 naveen. All rights reserved.
//

import Foundation
import UIKit

class ButtonStyling: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    
// MARK: - Private Method

    private func setup() {
        
      // self.layer.cornerRadius = self.frame.height/2
       self.layer.shadowColor = UIColor.green.cgColor
       self.layer.shadowOffset = CGSize(width: 0, height: 3)
       self.layer.shadowRadius = 4
       self.layer.shadowOpacity = 0.7
       self.layer.cornerRadius = 13
        
    }
}

