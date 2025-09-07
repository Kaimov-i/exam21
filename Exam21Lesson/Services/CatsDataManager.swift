//
//  CatsDataManager.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import Foundation

class CatsDataManager {
    
    var cats: [Cat]
    var curent: Int = 0
    
    init(cats: [Cat]) {
        self.cats = cats
    }
    
    func getLast() -> Cat {
        curent = cats.count - 1
        return cats[curent]
    }
    
    func getNext() -> Cat {
        if curent < cats.count - 1 {
            curent += 1
        }
        return cats[curent]
    }
    
    func getFierst() -> Cat {
        curent = 0
        return cats[curent]
        
    }
}
