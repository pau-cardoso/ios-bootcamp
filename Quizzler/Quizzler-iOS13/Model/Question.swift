//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Paulina on 14/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let title : String
    let answer : String
    
    init(q: String, a: String) {
        self.title = q
        self.answer = a
    }
}
