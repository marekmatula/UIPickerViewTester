//
//  AspViewController.swift
//  UIPickerViewTester
//
//  Created by Marek Matula on 04.03.16.
//  Copyright © 2016 Masilotti.com. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class AspViewController: UIViewController {

    let iPhones = [ "iPhone", "iPhone 3G", "iPhone 3GS", "iPhone 4", "iPhone 4S", "iPhone 5", "iPhone 5C", "iPhone 5S", "iPhone 6", "iPhone 6 Plus" ]


    @IBAction func showActionPicker(sender: AnyObject) {

        let cancelStringBlock: ActionStringCancelBlock = {ActionStringCancelBlock in return }
        let doneStringBlock: ActionStringDoneBlock = {picker, value, index in

            print("selected value: \(value)")
            print("selected index: \(index)")
            return
        }

        let sPicker = ActionSheetStringPicker(title: "AC picker", rows: iPhones, initialSelection: 2, doneBlock: doneStringBlock, cancelBlock: cancelStringBlock, origin: self.viewIfLoaded)

        sPicker.showActionSheetPicker()
    }




}
