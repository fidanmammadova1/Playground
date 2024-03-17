//
//  BullseyeApp.swift
//  Bullseye
//
//  Created by Fidan Mammadova on 12.03.24.
//

import SwiftUI

@main
struct BullseyeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
