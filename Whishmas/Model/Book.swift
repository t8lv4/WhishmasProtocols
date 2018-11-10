//
//  Book.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

struct Book {
    var title = ""
    var author = ""
}

extension Book: Present {
    var icon: String {
        return "BookIcon"
    }

    var cellTitle: String {
        return title
    }

    var description: String {
        return author
    }
}
