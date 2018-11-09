//
//  TripViewController.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class TripViewController: UIViewController {

    @IBOutlet weak var departureTextField: UITextField!
    @IBOutlet weak var destinationTextField: UITextField!

    @IBOutlet weak var daysStepper: UIStepper!
    @IBOutlet weak var daysLabel: UILabel!

    @IBAction func stepperChangedValue(_ sender: UIStepper) {
        let value = Int(daysStepper.value)
        daysLabel.text = "\(value) Days"
    }

    @IBAction func save() {
        guard let departure = departureTextField.text,
            let destination = destinationTextField.text else {
                return
        }

        let trip = Trip(
            departure: departure,
            destination: destination,
            durationInDays: Int(daysStepper.value))

        PresentService.shared.add(present: trip)

        performSegue(withIdentifier: "tripToListUnwind", sender: nil)
    }
}

extension TripViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
