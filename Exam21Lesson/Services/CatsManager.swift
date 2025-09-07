//
//  CatsImageManager.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import Foundation

class CatsManager {
    
    func getCats() -> [Cat] {
        [
            Cat(name: "Американская короткошерстная", description: "Мускулистое тело среднего размера, круглая голова, небольшие уши", imageName: "amer"),
            Cat(
                name: "Британская короткошерстная",
                description: "Округлая мордочка, плотные щёки, короткие уши, густая плюшевая шерсть",
                imageName: "brit"
            ),
            Cat(
                name: "Гималайская кошка",
                description: "Похожа на персидскую, но с окрасом сиамской",
                imageName: "gimalayskaya"
            ),
            Cat(
                name: "Мейн-кун",
                description: "Крупное тело, длинная шерсть, кисточки на ушах",
                imageName: "meyn"
            ),
            Cat(
                name: "Сиамская кошка",
                description: "Грациозное тело, большие уши, клиновидная мордочка, миндалевидные глаза, короткая блестящая шерсть",
                imageName: "siamese"
            )
        ]
    }
}
