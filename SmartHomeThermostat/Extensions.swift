//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Alejandro Rodriguez on 26/06/2023.
//

import SwiftUI

extension LinearGradient{
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing){
        self.init(gradient : Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
