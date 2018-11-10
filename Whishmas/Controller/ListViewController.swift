//
//  ListViewController.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    @IBAction func unwindToListVC(segue: UIStoryboardSegue) {}
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PresentService.shared.presents.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PresentCell", for: indexPath) as? PresentTableViewCell else {
            return UITableViewCell()
        }

        let present = PresentService.shared.presents[indexPath.row]
        cell.configure(with: present.icon, title: present.cellTitle, subtitle: present.description)

//        cell.textLabel?.text = present.cellTitle
//        cell.detailTextLabel?.text = present.description

        return cell
    }
}
