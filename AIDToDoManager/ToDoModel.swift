//
//  ToDoModel.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import RealmSwift

class ToDoModel: Object {
    dynamic var title = ""
    dynamic var deadLine = NSDate()
}
