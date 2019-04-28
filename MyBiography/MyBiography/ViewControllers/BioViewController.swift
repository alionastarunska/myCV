//
//  BioViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/12/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit


class BioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadWithAnimations()
    }
    
    let data = [("Name", "Aliona"),
                ("Address", "03057, Kiev, Ukraine, Metalistiv street 8"),
                ("Phone", "+380973440337"),
                ("E-mail", "aliona.starunska@gmail.com"),
                ("Date of birth", "9 January 2001"),
                ("Age", "18"),
                ("Home Town", "Zhytomyr"),
                ("Nationality", "Ukrainian")]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BioTableViewCell", for: indexPath) as! BioTableViewCell
        let field = data[indexPath.row]
        cell.titleLbl.text = field.0 + ":"
        cell.informationLbl.text = field.1
        return cell
    }

}
