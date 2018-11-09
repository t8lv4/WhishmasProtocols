//
//  ToyViewController.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ToyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var brandTextField: UITextField!

    @IBAction func save() {
        guard let name = nameTextField.text,
            let brand = brandTextField.text else {
                return
        }

        let toy = Toy(name: name, brand: brand)

        PresentService.shared.add(present: toy)

        performSegue(withIdentifier: "toyToListUnwind", sender: nil)
    }
}

extension ToyViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
