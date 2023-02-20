//
//  Task.swift
//  Photo-Scavenger-Hunt
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite place to entertain yourself",
                 description: "Where do you go to have fun, either with your friends or by yourself?"),
            Task(title: "Your favorite place to get lunch",
                 description: "Think of where you went to get the best meal around noon?"),
            Task(title: "Your favorite clothing store",
                 description: "Where do you go to get your most fashionable attire?")
        ]
    }
}
