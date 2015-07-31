//
//  ToDoListViewController.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit
import RealmSwift

class ToDoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var todoList = Realm().objects(ToDoModel)
    let dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
    }

    //MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as? ToDoListTableViewCell
        cell?.titleLabel.text = (todoList[indexPath.row] as ToDoModel).title
        cell?.deadLineLabel.text = dateFormatter.stringFromDate((todoList[indexPath.row] as ToDoModel).deadLine)
        return cell ?? UITableViewCell()
    }

}
