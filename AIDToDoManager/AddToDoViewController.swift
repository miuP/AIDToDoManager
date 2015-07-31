//
//  AddToDoViewController.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit
import RealmSwift

class AddToDoViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var deadLineTextField: UITextField!

    let dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"

        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .DateAndTime
        datePicker.addTarget(self, action: Selector("updateDeadLineTextField:"), forControlEvents: .ValueChanged)
        deadLineTextField.inputView = datePicker
    }

    func updateDeadLineTextField(sender: UIDatePicker) {
        deadLineTextField.text = dateFormatter.stringFromDate(sender.date)
    }

    @IBAction func addButtonTouchUpInside(sender: UIButton) {
        let todo = ToDoModel()
        todo.title = titleTextField.text
        todo.deadLine = dateFormatter.dateFromString(deadLineTextField.text) ?? NSDate()

        let realm = Realm()
        realm.write {
            realm.add(todo, update: false)
        }

        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func cancelButonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }



}
