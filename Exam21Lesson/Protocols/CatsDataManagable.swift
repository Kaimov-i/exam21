//
//  CatsDataManagable.swift
//  Exam21Lesson
//
//  Created by Ilman on 08.09.2025.
//

import Foundation

protocol CatsDataManagable {
    func getCats(cats: [Cat])
    
    func getCurent() -> Cat
    
    func getLast() -> Cat
    
    func getNext() -> Cat
    
    func getFierst() -> Cat
    
}
