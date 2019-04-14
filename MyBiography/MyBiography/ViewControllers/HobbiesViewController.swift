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
//        centerView.layer.transform = CATransform3DMakeScale(0, 0, 1)
//        centerView.alpha = 0
//
//        UIView.animate(withDuration: 1, delay: 0.4, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: .curveEaseInOut, animations: { [weak self] in
//            self?.centerView.alpha = 1
//            self?.centerView.layer.transform = CATransform3DMakeScale(1, 1, 1)
//        }, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
