//
//  EducationViewController.swift
//  MyBiography
//
//  Created by Aliona on 4/12/19.
//  Copyright © 2019 Aliona. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadWithAnimations()
    }
    
    let data = [("2019 - present", "National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute\"\nInstrument-making faculty\nAutomation and computer-integrated technologies", "NTUU_KPI_logo"),
                ("2018 - 2019", "National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute\"\nFaculty of electronics\nMicro and nanosystem technology", "NTUU_KPI_logo"),
                ("2016 - 2018", "Zhytomyr Agrotechnical College\nDepartment \"Electrification and Information Systems\"\nMaintenance of software systems and complexes", "zhatk"),
                ("2007-2016", "Zhytomyr general secondary school of 1-3 degrees number 16", "zosh")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EducationTableViewCell", for: indexPath) as! EducationTableViewCell
        let field = data[indexPath.row]
        cell.titleLbl.text = field.1
        cell.dateLbl.text = field.0
        cell.emblemImageView.image = UIImage(named: field.2)
        return cell
    }
  
}
