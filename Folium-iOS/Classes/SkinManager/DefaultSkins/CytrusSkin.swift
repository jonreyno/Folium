//
//  Cytrus.swift
//  Folium-iOS
//
//  Created by Jarrod Norwell on 30/8/2024.
//  Copyright © 2024 Jarrod Norwell. All rights reserved.
//

import Foundation
import UIKit

/*
 iPhone mini
 - portrait
 - landscape left
 - landscape right
 
 iPhone
 - portrait
 - landscape left
 - landscape right
 
 iPad
 - portrait
 - landscape left
 - landscape right
 */

var cytrusSkin: Skin? {
    let bounds = UIScreen.main.bounds
    let width = bounds.width
    let height = bounds.height
    
    let window = if #available(iOS 16, *) {
        UIApplication.shared.window
    } else {
        UIApplication.shared.windows[0]
    }
    
    guard let window else {
        return nil
    }
    
    let safeAreaInsets = window.safeAreaInsets
    let screenSafeAreaInserts = UIEdgeInsets(top: window.safeAreaInsets.top, left: 0, bottom: 0, right: 0)
    
    var machine = machine
#if targetEnvironment(simulator)
    machine = "iPhone16,2"
#endif
    
    guard let machine = Machine(rawValue: machine) else {
        return nil
    }
    
    switch machine {
    case .iPhoneSE2Gen_1,
            .iPhoneSE3Gen_1,
            .iPhone12_1,
            .iPhone13_1:
        let lrzlzrButtonHeight = Double(45 * (3 / 2))
        
        let portrait: Orientation = .init(sharedAlpha: 0.2, buttons: [
            .init(x: width - (45 + 10 + safeAreaInsets.right),
                  y: height - (90 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .a),
            .init(x: width - (90 + 10 + safeAreaInsets.right),
                  y: height - (45 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .b),
            .init(x: width - (90 + 10 + safeAreaInsets.right),
                  y: height - (135 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .x),
            .init(x: width - (135 + 10 + safeAreaInsets.right),
                  y: height - (90 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .y),
            .init(x: 45 + 10 + safeAreaInsets.left,
                  y: height - (135 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .dpadUp),
            .init(x: 45 + 10 + safeAreaInsets.left,
                  y: height - (45 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .dpadDown),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (90 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .dpadLeft),
            .init(x: 90 + 10 + safeAreaInsets.left,
                  y: height - (90 + safeAreaInsets.bottom),
                  width: 45,
                  height: 45,
                  type: .dpadRight),
            .init(x: width / 2 - 12.5,
                  y: height - (25 + safeAreaInsets.bottom),
                  width: 25,
                  height: 25,
                  type: .home),
            .init(x: width / 2 - 55,
                  y: height - (25 + safeAreaInsets.bottom),
                  width: 25,
                  height: 25,
                  type: .minus),
            .init(x: width / 2 + 30,
                  y: height - (25 + safeAreaInsets.bottom),
                  width: 25,
                  height: 25,
                  type: .plus),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (190 + safeAreaInsets.bottom),
                  width: lrzlzrButtonHeight,
                  height: 45,
                  type: .l),
            .init(x: 10 + lrzlzrButtonHeight + 20 + safeAreaInsets.left,
                  y: height - (190 + safeAreaInsets.bottom),
                  width: lrzlzrButtonHeight,
                  height: 45,
                  type: .zl),
            .init(x: width - (10 + lrzlzrButtonHeight + safeAreaInsets.right),
                  y: height - (190 + safeAreaInsets.bottom),
                  width: lrzlzrButtonHeight,
                  height: 45,
                  type: .r),
            .init(x: width - (10 + (lrzlzrButtonHeight * 2) + 20 + safeAreaInsets.right),
                  y: height - (190 + safeAreaInsets.bottom),
                  width: lrzlzrButtonHeight,
                  height: 45,
                  type: .zr),
            .init(x: 0,
                  y: 0,
                  width: 0,
                  height: 0,
                  type: .settings)
        ], screens: [
            .init(x: screenSafeAreaInserts.left,
                  y: screenSafeAreaInserts.top,
                  width: width - (screenSafeAreaInserts.left + screenSafeAreaInserts.right),
                  height: height - (screenSafeAreaInserts.top + screenSafeAreaInserts.bottom))
        ], thumbsticks: [
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (135 + safeAreaInsets.bottom),
                  width: 135,
                  height: 135,
                  type: .left),
            .init(x: width - (135 + 10 + safeAreaInsets.right),
                  y: height - (135 + safeAreaInsets.bottom),
                  width: 135,
                  height: 135,
                  type: .right)
        ])
        
        return .init(author: .init(name: "Antique",
                                   socials: [
                                    .init(type: .twitter,
                                          username: "antique_codes")
                                   ]),
                     core: .cytrus,
                     orientations: .init(portrait: portrait,
                                         landscapeLeft: portrait,
                                         landscapeRight: portrait,
                                         supportedDevices: Machine.iPhone_mini),
                     title: "Default Skin")
        
        
    case .iPhone8_1,
            .iPhone8_2,
            .iPhone8_3,
            .iPhone8_4,
            .iPhoneX_1,
            .iPhoneX_2,
            .iPhoneXR_1,
            .iPhoneXS_1,
            .iPhoneXS_2,
            .iPhoneXS_3,
            .iPhone11_1,
            .iPhone11_2,
            .iPhone11_3,
            .iPhone12_2,
            .iPhone12_3,
            .iPhone12_4,
            .iPhone13_2,
            .iPhone13_3,
            .iPhone13_4,
            .iPhone14_1,
            .iPhone14_2,
            .iPhone14_3,
            .iPhone14_4,
            .iPhone15_1,
            .iPhone15_2,
            .iPhone15_3,
            .iPhone15_4,
            .iPhone16_1,
            .iPhone16_2,
            .iPhone16_3,
            .iPhone16_4:
        let portrait: Orientation = .init(sharedAlpha: 0.2, buttons: [
            .init(x: width - (50 + 10 + safeAreaInsets.right),
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .a),
            .init(x: width - (100 + 10 + safeAreaInsets.right),
                  y: height - (50 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .b),
            .init(x: width - (100 + 10 + safeAreaInsets.right),
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .x),
            .init(x: width - (150 + 10 + safeAreaInsets.right),
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .y),
            .init(x: 50 + 10 + safeAreaInsets.left,
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadUp),
            .init(x: 50 + 10 + safeAreaInsets.left,
                  y: height - (50 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadDown),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadLeft),
            .init(x: 100 + 10 + safeAreaInsets.left,
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadRight),
            .init(x: width / 2 - 15,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .home),
            .init(x: width / 2 - 65,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .minus),
            .init(x: width / 2 + 35,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .plus),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .l),
            .init(x: 10 + Double(50 * (3 / 2)) + 20 + safeAreaInsets.left,
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .zl),
            .init(x: width - (10 + Double(50 * (3 / 2)) + safeAreaInsets.right),
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .r),
            .init(x: width - (10 + (Double(50 * (3 / 2)) * 2) + 20 + safeAreaInsets.right),
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .zr)
        ], screens: [
            .init(x: screenSafeAreaInserts.left,
                  y: screenSafeAreaInserts.top,
                  width: width - (screenSafeAreaInserts.left + screenSafeAreaInserts.right),
                  height: height - (screenSafeAreaInserts.top + screenSafeAreaInserts.bottom))
        ], thumbsticks: [
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 150,
                  height: 150,
                  type: .left),
            .init(x: width - (150 + 10 + safeAreaInsets.right),
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 150,
                  height: 150,
                  type: .right)
        ])
        
        return .init(author: .init(name: "Antique",
                                   socials: [
                                    .init(type: .twitter,
                                          username: "antique_codes")
                                   ]),
                     core: .cytrus,
                     orientations: .init(portrait: portrait,
                                         landscapeLeft: portrait,
                                         landscapeRight: portrait,
                                         supportedDevices: Machine.iPhone),
                     title: "Default Skin")
        
    case .iPad10Gen_1,
            .iPad10Gen_2,
            .iPad9Gen_1,
            .iPad9Gen_2,
            .iPad8Gen_1,
            .iPad8Gen_2,
            .iPad7Gen_1,
            .iPad7Gen_2,
            .iPad6Gen_1,
            .iPad6Gen_2,
            .iPad5Gen_1,
            .iPad5Gen_2,
            .iPadAir6Gen_1,
            .iPadAir6Gen_2,
            .iPadAir6Gen_3,
            .iPadAir6Gen_4,
            .iPadAir5Gen_1,
            .iPadAir5Gen_2,
            .iPadAir4Gen_1,
            .iPadAir4Gen_2,
            .iPadMini7Gen_1,
            .iPadMini7Gen_2,
            .iPadMini6Gen_1,
            .iPadMini6Gen_2,
            .iPadMini5Gen_1,
            .iPadMini5Gen_2,
            .iPadPro_1,
            .iPadPro_2,
            .iPadPro_3,
            .iPadPro_4,
            .iPadPro2Gen_1,
            .iPadPro2Gen_2,
            .iPadPro2Gen_3,
            .iPadPro2Gen_4,
            .iPadPro3Gen_1,
            .iPadPro3Gen_2,
            .iPadPro3Gen_3,
            .iPadPro3Gen_4,
            .iPadPro3Gen_5,
            .iPadPro3Gen_6,
            .iPadPro3Gen_7,
            .iPadPro3Gen_8,
            .iPadPro4Gen_1,
            .iPadPro4Gen_2,
            .iPadPro5Gen_1,
            .iPadPro5Gen_2,
            .iPadPro5Gen_3,
            .iPadPro5Gen_4,
            .iPadPro5Gen_5,
            .iPadPro5Gen_6,
            .iPadPro5Gen_7,
            .iPadPro5Gen_8,
            .iPadPro5Gen_9,
            .iPadPro5Gen_10,
            .iPadPro6Gen_1,
            .iPadPro6Gen_2,
            .iPadPro6Gen_3,
            .iPadPro6Gen_4,
            .iPadPro7Gen_1,
            .iPadPro7Gen_2,
            .iPadPro7Gen_3,
            .iPadPro7Gen_4:
        let portrait: Orientation = .init(sharedAlpha: 0.2, buttons: [
            .init(x: width - (50 + 10 + safeAreaInsets.right),
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .a),
            .init(x: width - (100 + 10 + safeAreaInsets.right),
                  y: height - (50 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .b),
            .init(x: width - (100 + 10 + safeAreaInsets.right),
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .x),
            .init(x: width - (150 + 10 + safeAreaInsets.right),
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .y),
            .init(x: 50 + 10 + safeAreaInsets.left,
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadUp),
            .init(x: 50 + 10 + safeAreaInsets.left,
                  y: height - (50 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadDown),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadLeft),
            .init(x: 100 + 10 + safeAreaInsets.left,
                  y: height - (100 + safeAreaInsets.bottom),
                  width: 50,
                  height: 50,
                  type: .dpadRight),
            .init(x: width / 2 - 15,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .home),
            .init(x: width / 2 - 65,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .minus),
            .init(x: width / 2 + 35,
                  y: height - (30 + safeAreaInsets.bottom),
                  width: 30,
                  height: 30,
                  type: .plus),
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .l),
            .init(x: 10 + Double(50 * (3 / 2)) + 20 + safeAreaInsets.left,
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .zl),
            .init(x: width - (10 + Double(50 * (3 / 2)) + safeAreaInsets.right),
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .r),
            .init(x: width - (10 + (Double(50 * (3 / 2)) * 2) + 20 + safeAreaInsets.right),
                  y: height - (210 + safeAreaInsets.bottom),
                  width: Double(50 * (3 / 2)),
                  height: 50,
                  type: .zr)
        ], screens: [
            .init(x: screenSafeAreaInserts.left,
                  y: screenSafeAreaInserts.top,
                  width: width - (screenSafeAreaInserts.left + screenSafeAreaInserts.right),
                  height: height - (screenSafeAreaInserts.top + screenSafeAreaInserts.bottom))
        ], thumbsticks: [
            .init(x: 10 + safeAreaInsets.left,
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 150,
                  height: 150,
                  type: .left),
            .init(x: width - (150 + 10 + safeAreaInsets.right),
                  y: height - (150 + safeAreaInsets.bottom),
                  width: 150,
                  height: 150,
                  type: .right)
        ])
        
        return .init(author: .init(name: "Antique",
                                   socials: [
                                    .init(type: .twitter,
                                          username: "antique_codes")
                                   ]),
                     core: .cytrus,
                     orientations: .init(portrait: portrait,
                                         landscapeLeft: portrait,
                                         landscapeRight: portrait,
                                         supportedDevices: Machine.iPad),
                     title: "Default Skin")
    }
}
