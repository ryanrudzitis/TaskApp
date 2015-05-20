//
//  getCoreData.swift
//  TaskAppV2
//
//  Created by Ryan Rudzitis on 2015-05-12.
//  Copyright (c) 2015 Ryan Rudzitis. All rights reserved.
//

import UIKit
import CoreData

func getCoreDataArray(userEntityName: String) -> NSArray{
    let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    let context: NSManagedObjectContext = appDel.managedObjectContext!
    
    var request = NSFetchRequest(entityName: userEntityName)
    request.returnsObjectsAsFaults = false
    
    var results: NSArray = context.executeFetchRequest(request, error: nil)!
    
    return results
}
