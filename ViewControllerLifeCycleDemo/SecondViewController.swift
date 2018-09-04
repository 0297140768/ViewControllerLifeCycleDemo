//
//  SecondViewController.swift
//  ViewControllerLifeCycleDemo
//
//  Created by Татьяна on 04.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let name = "SecondViewController"
    var lineNumber = 0
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addLineToLabel(functionName: "\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addLineToLabel(functionName: "\(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addLineToLabel(functionName: "\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addLineToLabel(functionName: "\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addLineToLabel(functionName: "\(#function)")
    }

    func addLineToLabel(functionName: String) {
        lineNumber += 1
        if let textInLabel = textLabel.text {
            textLabel.text = "\(textInLabel) \n \(lineNumber). \(name):  \(functionName)"
        }
    }
    

}
