//
//  StartViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/12/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // removing navigation bar background
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var i = 0
        var views : [UIView] = [imageView, nameLbl]
        views.append(contentsOf: stackView.subviews)
        for view in views {
            view.alpha = 0
            view.transform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height/2)
            UIView.animate(withDuration: 1.0, delay: 0.25 + 0.15*Double(i), usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                
                view.alpha = 1
                view.transform = .identity
            }, completion: nil)
            i+=1
        }
    }
}
