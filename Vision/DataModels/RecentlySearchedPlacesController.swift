//
//  RecentlySearchedPlacesController.swift
//  Vision
//
//  Created by Denys on 08.08.2022.
//

import Foundation
import CoreData

class RecentlySearchedPlacesController {
    let container = NSPersistentContainer(name: "RecentlySearchedPlace")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription )")
            }
            
            
        }
    }
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved!!! WUHU!")
        } catch {
            print("We cound not save the data.... ")
        }
    }
    func addPlaceToRecentList(name: String, identifier: String, context: NSManagedObjectContext) {
        let recentPlace = RecentlySearchedPlace (context: context)
        recentPlace.name = name
        recentPlace.identifier = identifier
        
        save(context: context )
        
        
    }
    
    
    
}
