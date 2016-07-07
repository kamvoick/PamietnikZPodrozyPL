//
//  Dzwiek+CoreDataProperties.swift
//  MojeMiejsca
//
//  Created by Kamil Wójcik on 06.07.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Dzwiek {

    @NSManaged var nazwaMiejsca: String?
    @NSManaged var nazwaDzwieku: String?
    @NSManaged var urlDzwieku: String?

}
