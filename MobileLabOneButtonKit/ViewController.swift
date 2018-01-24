//
//  ViewController.swift
//  MobileLab1ButtonKit
//
//  Created by Nien Lam on 1/19/18.
//  Copyright © 2018 Mobile Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    let colorArray = [UIColor(hex: 0x61BB46),
                      UIColor(hex: 0xFDB827),
                      UIColor(hex: 0xF5821F),
                      UIColor(hex: 0xE03A3E),
                      UIColor(hex: 0x963D97),
                      UIColor(hex: 0x009DDC)]

    let stringArray = ["Maecenas sed diam eget risus varius blandit sit amet non magna. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Sed posuere consectetur est at lobortis. Donec sed odio dui.",
                       "One",
                       "Two",
                       "Three",
                       "Four",
                       "Five"]
    
    var currentIndex = 0
    let arraySize    = 6
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colorArray[currentIndex]

        label.text = stringArray[currentIndex]
    }

    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        print("single tap")
    
        nextIndex()
        view.backgroundColor = colorArray[currentIndex]
        
        label.text = stringArray[currentIndex]
    }
    
    
    @IBAction func handleLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            print("Long Press detected")
        }
    }
    
    func nextIndex() {
        currentIndex = (currentIndex + 1 == arraySize) ? 0 : currentIndex + 1
    }
    
}

