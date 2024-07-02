//
//  SoonToSpoonApp.swift
//  SoonToSpoon
//
//  Created by Alex  on 30/6/24.
//

import SwiftUI

@main
struct SoonToSpoonApp: App {
    @StateObject var mainVM = MainVM()
    var body: some Scene {
        WindowGroup {
            GroceryList()
                .environmentObject(mainVM)
        }
    }
}
