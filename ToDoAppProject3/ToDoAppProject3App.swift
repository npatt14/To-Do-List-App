//
//  ToDoAppProject3App.swift
//  ToDoAppProject3
//
//  Created by Nathan Patterson on 12/14/22.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View -
 ViewModel - manages Models for View
 
 */


@main
struct ToDoAppProject3App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel )
        }
    }
}
