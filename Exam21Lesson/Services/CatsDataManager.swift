//
//  CatsDataManager.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import Foundation

class CatsDataManager: CatsDataManagable {
    
    private var cats: [Cat] = []
    private var curent: Int = 0
    
    func getCurent() -> Cat {
        cats[curent]
    }
    
    func getLast() -> Cat {
        if curent > 0 {
            curent -= 1
        }
        return getCurent()
    }
    
    func getNext() -> Cat {
        if curent < cats.count - 1 {
            curent += 1
        }
       return getCurent()
    }
    
    func getFierst() -> Cat {
        curent = 0
       return getCurent()
    }
    
    func getCats(cats: [Cat]) {
        self.cats = cats
    }
}
