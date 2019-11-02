//
//  SecundarioViewController.swift
//  iPioneer
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class SecundarioViewController: UIViewController {
    
    //MARK: Properties
    var fileName = ""
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var texto = ""
        
        if let data = NSDataAsset(name: self.fileName + "Text")?.data {
            texto = String(data: data, encoding: .utf8)!
            self.descriptionText.text = texto
            
            switch self.fileName {
                case "lovelace":
                    self.titleLabel.text = "Lovelace"
                case "hopper":
                    self.titleLabel.text = "Hopper"
                case "liskov":
                    self.titleLabel.text = "Liskov"
                default:
                    self.titleLabel.text = ""
            }
        }
    }

}
