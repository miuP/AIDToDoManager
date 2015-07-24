//
//  AddToDoViewController.swift
//  AIDToDoManager
//
//  Created by IllyasvielVonEinzbern on 7/24/15.
//  Copyright (c) 2015 KazuyaMIURA. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {


    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var deadLineTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addButtonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func cancelButonTouchUpInside(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
