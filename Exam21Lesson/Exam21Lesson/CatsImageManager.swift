//
//  CatsImageManager.swift
//  Exam21Lesson
//
//  Created by Ilman on 01.09.2025.
//

import Foundation

class CatsImageManager {

    func getCats() -> [Cat]{
        [Cat(name: "Американская короткошерстная", description: "Мускулистое тело среднего размера, круглая голова, небольшие уши", number: 1, imageName: "amer"),
         Cat(name: "Британская короткошерстная", description: "Округлая мордочка, плотные щёки, короткие уши, густая плюшевая шерсть", number: 2, imageName: "brit"),
         Cat(name: "Гималайская кошка", description: "Похожа на персидскую, но с окрасом сиамской", number: 3, imageName: "gimalayskaya"),
         Cat(name: "Мейн-кун", description: "Крупное тело, длинная шерсть, кисточки на ушах", number: 4, imageName: "MaineCoon"),
         Cat(name: "Сиамская кошка", description: "Грациозное тело, большие уши, клиновидная мордочка, миндалевидные глаза, короткая блестящая шерсть", number: 5, imageName: "siamese")
        ]
    }
}
