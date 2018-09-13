//
//  ViewControllerForDemo.swift
//  ViewControllerLifeCycleDemo
//
//  Created by Татьяна on 12.09.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class ViewControllerForDemo: UIViewController {
    
    var name:String {return "\(type(of: self))"}

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TextCollector.ref.append(viewControllerName: name, functionName: "\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        TextCollector.ref.append(viewControllerName: name, functionName: "\(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextCollector.ref.append(viewControllerName: name, functionName: "\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        TextCollector.ref.append(viewControllerName: name, functionName: "\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        TextCollector.ref.append(viewControllerName: name, functionName: "\(#function)")
    }
}
