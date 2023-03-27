//
//  List View Model.swift
//  ToDoAppProject3
//
//  Created by Nathan Patterson on 12/16/22.
//

import Foundation
 
class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    //? What is init?
    init() {
        getItems()
    }
    //appending into array
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false),
        ]
        //append code
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet)  {
        items.remove(atOffsets: indexSet)
    }
    //?
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel) {
        
//       if let index = items.firstIndex { (existingItem) -> Bool in return existingItem.id == item.id
//        } (
//        )
         
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
        
    }
    
    
}
