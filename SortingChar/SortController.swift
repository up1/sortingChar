//
//  SortController.swift
//  SortingChar
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import UIKit
protocol SortControllerProtocol {
    func displayResult(result: String)
    func displayEmpty()
}

class SortController: NSObject {
    var sortProtocol: SortControllerProtocol!

    func sort(_ input: String) {
        if input.isEmpty {
            self.sortProtocol.displayEmpty()
        } else {
            let sorter = Sorter()
            let result = sorter.sort(input: input)
            self.sortProtocol.displayResult(result: result)
        }
    }
}
