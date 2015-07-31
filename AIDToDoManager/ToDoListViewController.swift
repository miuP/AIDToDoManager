//
//  ToDoListViewController.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit
import RealmSwift

class ToDoListViewController: UIViewController {

    var todoList = Realm().objects(ToDoModel)
    let dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
    }

}
