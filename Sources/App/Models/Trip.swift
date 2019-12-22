//
// Created by subash on 12/21/19.
//

import Foundation
import Vapor

final class Trip : Content {

    var name: String

    init(name: String) {
        self.name = name
    }
}
