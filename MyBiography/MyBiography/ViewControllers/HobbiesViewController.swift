//
//  HobbiesViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/14/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class HobbiesViewController: UIViewController {

    @IBOutlet var circles: [UIView]!
    @IBOutlet var petsSection: [UIView]!
    @IBOutlet var travelingSection: [UIView]!
    @IBOutlet var codingSection: [UIView]!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func TapAction(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: scrollView)
        guard let image = (petsSection + travelingSection + codingSection).compactMap({$0 as? UIImageView}).first(where: {$0.frame.contains(location)})?.image else { return }
        let id = String(describing: HobbiesPhotoViewController.self)
        if let vc = storyboard?.instantiateViewController(withIdentifier: id) as? HobbiesPhotoViewController {
            vc.image = image
            present(vc, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var i = 0
        for circle in circles {
            circle.layer.transform = CATransform3DMakeScale(0, 0, 1)
            circle.alpha = 0
            UIView.animate(withDuration: 1.0, delay: 0.4 + 0.15*Double(i), usingSpringWithDamping: 0.55, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                circle.alpha = 1
                circle.layer.transform = CATransform3DMakeScale(1, 1, 1)
            }, completion: nil)
            i+=1
        }
        
        i = 0
        for circle in petsSection {
            circle.layer.transform = CATransform3DMakeScale(0, 0, 1)
            circle.alpha = 0
            UIView.animate(withDuration: 1.0, delay: 1.4 + 0.15*Double(i), usingSpringWithDamping: 0.55, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                circle.alpha = 1
                circle.layer.transform = CATransform3DMakeScale(1, 1, 1)
            }, completion: nil)
            i+=1
        }
        
        i = 0
        for circle in travelingSection {
            circle.layer.transform = CATransform3DMakeScale(0, 0, 1)
            circle.alpha = 0
            UIView.animate(withDuration: 1.0, delay: 2.4 + 0.15*Double(i), usingSpringWithDamping: 0.55, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                circle.alpha = 1
                circle.layer.transform = CATransform3DMakeScale(1, 1, 1)
            }, completion: nil)
            i+=1
        }
        
        i = 0
        for circle in codingSection {
            circle.layer.transform = CATransform3DMakeScale(0, 0, 1)
            circle.alpha = 0
            UIView.animate(withDuration: 1.0, delay: 3.4 + 0.15*Double(i), usingSpringWithDamping: 0.55, initialSpringVelocity: 0.1, options: .curveEaseInOut, animations: {
                circle.alpha = 1
                circle.layer.transform = CATransform3DMakeScale(1, 1, 1)
            }, completion: nil)
            i+=1
        }
        
    }

}
