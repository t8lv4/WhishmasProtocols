//
//  PresentService.swift
//  Whishmas
//
//  Created by Ambroise COLLON on 07/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

class PresentService {
    static let shared = PresentService()
    private init() {}

    // read only, ie private mod. only
    private(set) var presents = [Present]()

    func add(present: Present) {
        presents.append(present)
    }

    func removePresent(at index: Int) {
        presents.remove(at: index)
    }
}
