//
//  HobbiesPhotoViewController.swift
//  MyBiography
//
//  Created by Aliona Starunska on 20.09.2020.
//  Copyright © 2020 Aliona. All rights reserved.
//

import UIKit

class HobbiesPhotoViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
