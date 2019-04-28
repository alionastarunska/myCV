//
//  SkilsViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/13/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class SkilsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadWithAnimations()
    }
    
    let data = [("Programming languages","Swift, C, C++ HTML"),
                ("Version-control system","Git"),
                ("Project management system","Trello"),
                ("Development Software","Xcode, Sourcetree, Dev C++, Visual Studio"),
                ("Languages","Ukrainian, Russian - Native;\nEnglish - Intermediate;\nPolish, German - Basic.")]

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SkilsImageTableViewCell", for: indexPath)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SkilsTextTableViewCell", for: indexPath) as! SkilsTextTableViewCell
            let field = data[indexPath.row]
            cell.titleLbl.text = field.0 + ":"
            cell.informationLbl.text = field.1
            return cell
        }
    }
}
