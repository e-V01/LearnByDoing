//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Y K on 27.02.2024.
//

import SwiftUI


// CARD MODEL

struct Card: Identifiable {
    var id = UUID() // to differentiate and define cards
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
