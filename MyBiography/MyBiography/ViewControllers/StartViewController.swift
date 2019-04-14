//
//  StartViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/12/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        imageView.alpha = 0
        imageView.transform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height/2)
        UIView.animate(withDuration: 1.0, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: { [weak self] in
            
            
            self?.imageView.alpha = 1
            self?.imageView.transform = .identity
        }, completion: nil)
    }
    
    
}
