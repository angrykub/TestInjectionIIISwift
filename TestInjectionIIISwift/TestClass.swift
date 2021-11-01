//
//  TestClass.swift
//  TestInjectionIIISwift
//
//  Created by cynzhanglingli on 2021/11/1.
//

import UIKit

class TestClass: NSObject {
    
    class func test() -> UILabel {
        let label = UILabel()
        label.backgroundColor = UIColor.blue
        return label
    }
    
}
