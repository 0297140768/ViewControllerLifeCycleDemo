//
//  SecondViewController.swift
//  ViewControllerLifeCycleDemo
//
//  Created by Татьяна on 04.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class SecondViewController: ViewControllerForDemo, TextCollectorDeleagate {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        TextCollector.ref.delegate = self
        super.viewDidLoad()
    }
    

}
