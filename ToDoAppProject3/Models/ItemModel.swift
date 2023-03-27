//
//  ItemModel.swift
//  ToDoAppProject3
//
//  Created by Nathan Patterson on 12/15/22.
//

import Foundation

//Immutable Struct = all items are constant
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id,title: title, isCompleted: !isCompleted)
    }
    
}


