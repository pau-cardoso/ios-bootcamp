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
    let answers : [String]
    let correctAnswer : String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.title = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
