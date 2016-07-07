//
//  MojeMiejsca+CoreDataProperties.swift
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

extension MojeMiejsca {

    @NSManaged var nazwaMiejsca: String?
    @NSManaged var typMiejsca: String?
    @NSManaged var opisMiejsca: String?
    @NSManaged var pokazMiejsce: NSNumber?
    @NSManaged var latitudeMiejsca: NSNumber?
    @NSManaged var longitudeMiejsca: NSNumber?

}
