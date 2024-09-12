//
//  basics.swift
//  swift_learning
//
//  Created by yiyuan hu on 9/10/24.
//

import Foundation
import Cocoa

func getUser()->(firstName: String, lastName: String){
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
