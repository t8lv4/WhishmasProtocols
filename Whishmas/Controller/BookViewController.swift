//
//  BookViewController.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!

    @IBAction func save() {
        guard let title = titleTextField.text,
            let author = authorTextField.text else {
                return
        }

        let book = Book(title: title, author: author)

        // TODO: Add book to list

        performSegue(withIdentifier: "bookToListUnwind", sender: nil)
    }
}

extension BookViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
