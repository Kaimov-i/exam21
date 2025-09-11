//
//  Cats.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import Foundation

struct Cat {
    let name: String
    let catDescription: String
    let imageName: String
}

//MARK: - Comparable
extension Cat: Comparable {
    static func < (lhs: Cat, rhs: Cat) -> Bool {
        lhs.imageName < rhs.imageName
    }
}

//MARK: - CustomStrigComparable
extension Cat: CustomStringConvertible {
    var description: String {
        "Image name: \(imageName), description: \(catDescription)"
    }
}
