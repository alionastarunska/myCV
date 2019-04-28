//
//  UITableView+Animations.swift
//  MyBiography
//
//  Created by Aliona on 4/14/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

extension UITableView {
    func reloadWithAnimations() {
        self.reloadData()
        let cells = self.visibleCells
        let duration = 0.7
        var i = 0
        for cell in cells {
            cell.alpha = 0
            cell.transform = CGAffineTransform(translationX: 0, y: self.frame.height/2)
            
            UIView.animate(withDuration: duration, delay: 0.2 + 0.12*Double(i), usingSpringWithDamping: 0.75, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                cell.alpha = 1
                cell.transform = .identity
            }, completion: nil)
            i+=1
        }
    }
}
