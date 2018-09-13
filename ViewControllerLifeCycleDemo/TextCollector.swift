//
//  TextCollector.swift
//  ViewControllerLifeCycleDemo
//
//  Created by Татьяна on 12.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Foundation
import UIKit

protocol TextCollectorDeleagate {
    var textView: UITextView! {get set}
}

struct TextCollector {
    
    var delegate: TextCollectorDeleagate?
    
    private var lineNumber: Int
    private var text: String {
        didSet {
            if let delegate = self.delegate {
                delegate.textView.text = text
            }
        }
    }
    
    private init() {
        lineNumber = 0
        text = ""
    }
    
    mutating func append(viewControllerName: String, functionName: String) {
        lineNumber += 1
        text = "\(text) \n \(lineNumber). \(viewControllerName):  \(functionName)"
    }
    
    static var ref = TextCollector()
}
