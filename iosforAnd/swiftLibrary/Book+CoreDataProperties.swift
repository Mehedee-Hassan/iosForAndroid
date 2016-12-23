//
//  Book+CoreDataProperties.swift
//  swiftLibrary
//
//  Created by Mehedee Hassan on 12/22/16.
//  Copyright © 2016 Mehedee Hassan. All rights reserved.
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book");
    }

    @NSManaged public var publishDate: String?
    @NSManaged public var author: String?
    @NSManaged public var desc: String?
    @NSManaged public var descUri: String?
    @NSManaged public var id: String?
    @NSManaged public var imageUri: String?
    @NSManaged public var rating: Int32
    @NSManaged public var title: String?

}
