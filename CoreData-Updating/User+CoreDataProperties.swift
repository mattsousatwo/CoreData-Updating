//
//  User+CoreDataProperties.swift
//  CoreData-Updating
//
//  Created by Matthew Sousa on 2/18/20.
//  Copyright © 2020 Matthew Sousa. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var password: String?
    @NSManaged public var segment: String?
    @NSManaged public var username: String?

}
