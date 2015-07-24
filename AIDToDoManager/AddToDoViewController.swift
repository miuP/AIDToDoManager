//
//  AddToDoViewController.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var deadLineTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .DateAndTime
        datePicker.addTarget(self, action: Selector("updateDeadLineTextField:"), forControlEvents: .ValueChanged)
        deadLineTextField.inputView = datePicker
    }

    func updateDeadLineTextField(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm"
        deadLineTextField.text = dateFormatter.stringFromDate(sender.date)
    }

    @IBAction func addButtonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func cancelButonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }



}
