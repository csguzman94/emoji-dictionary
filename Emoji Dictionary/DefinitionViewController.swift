//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Cody Guzman on 5/11/17.
//  Copyright © 2017 Cody Guzman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    // definition outlet
    @IBOutlet weak var definitionLabel: UILabel!
    
    //emoji label outlet
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //displays the emoji on the definition page
        emojiLabel.text = emoji
        
        
        //if statement for text
        if emoji == "😊" {
            definitionLabel.text = "A Happy Smile"
        }
        if emoji == "😎" {
            definitionLabel.text = "hello"
        }
        if emoji == "🤑" {
            definitionLabel.text = "hello"
        }
        if emoji == "😡" {
            definitionLabel.text = "hello"
        }
        if emoji == "😈" {
            definitionLabel.text = "hello"
        }
        if emoji == "😷" {
            definitionLabel.text = "hello"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
