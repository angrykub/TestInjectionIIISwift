//
//  ViewController.swift
//  TestInjectionIIISwift
//
//  Created by cynzhanglingli on 2021/11/1.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(hotReload), name: NSNotification.Name(rawValue: "INJECTION_BUNDLE_NOTIFICATION"), object: nil)
        
        let label = TestClass.test()
        label.frame = CGRect(x: 200, y: 400, width: 100, height: 30)
        view.addSubview(label)
    }
    
    @objc func hotReload() {
        #if DEBUG
        viewDidLoad()
        #endif
    }


}

