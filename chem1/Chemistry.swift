//
//  Chemistry.swift
//  chem1
//
//  Created by heroshi on 2017/5/14.
//  Copyright © 2017年 heroshi. All rights reserved.
//

import Foundation

class Chemistry {
    
    var question = ""
    
    
    var type = ""
    //var year = ""
    var ans = ""
    var isVisited = false
    
    var btnA = ""
    var btnB = ""
    var btnC = ""
    var btnD = ""
    var btnE = ""
    
    
    init(question: String, type: String, ans: String, btnA: String, btnB: String, btnC: String, btnD: String, btnE: String,  isVisited: Bool) {
        self.question = question
        self.type = type
        self.ans = ans
        self.btnA = btnA
        self.btnB = btnB
        self.btnC = btnC
        self.btnD = btnD
        self.btnE = btnE
        self.isVisited = isVisited
    }
}
