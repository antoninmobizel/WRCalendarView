//
//  WREventCell.swift
//  Pods
//
//  Created by wayfinder on 2017. 4. 30..
//
//

import UIKit

class WREventCell: UICollectionViewCell {
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0
        
        borderView.backgroundColor = borderColor()
        titleLabel.textColor = textColorHighlighted()

        updateColors()
    }
    
    var event: WREvent? {
        didSet {
            if let event = event {
                titleLabel.text = event.title
                updateColors()
            }
        }
    }
    
    private func updateColors() {
        contentView.backgroundColor = backgroundColorHighlighted()
    }
    
    private func backgroundColorHighlighted() -> UIColor {
        if let event = event {
            return event.color!.withAlphaComponent(0.1)
        } else {
            return UIColor(hexString: "35b1f1")!.withAlphaComponent(0.1)
        }
    }
    
    private func textColorHighlighted() -> UIColor {
        return UIColor(hexString: "21729c")!
    }
    
    private func borderColor() -> UIColor {
        return self.backgroundColorHighlighted().withAlphaComponent(1.0)
    }
}
