//
//  SuccessPage.swift
//  MiraclePills
//
//  Created by Rehan Javed on 09/02/2018.
//  Copyright © 2018 RJ APPS. All rights reserved.
//

import UIKit

class SuccessPage: UIViewController {

    @IBOutlet weak var greetingMessage: UILabel!
    private var _message: String!
    var message:String {
        get{
            return _message;
        }
        set{
            _message = "Thank You "+newValue;
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        greetingMessage.text = message
        
    }
    
}
