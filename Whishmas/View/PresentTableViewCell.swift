//
//  PresentTableViewCell.swift
//  Whishmas
//
//  Created by Morgan on 10/11/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class PresentTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var whiteView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        addShadow()
    }

}

extension PresentTableViewCell {

    func configure(with icon: String, title: String, subtitle: String) {
        iconView.image = UIImage(named: icon)
        titleLabel.text = title
        subTitleLabel.text = subtitle
    }

}

extension PresentTableViewCell {

    private func addShadow() {
        whiteView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
        whiteView.layer.shadowRadius = 2.0
        whiteView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        whiteView.layer.shadowOpacity = 2.0
    }

}
