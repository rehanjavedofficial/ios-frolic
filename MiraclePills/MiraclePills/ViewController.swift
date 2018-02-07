//
//  ViewController.swift
//  MiraclePills
//
//  Created by Rehan Javed on 06/02/2018.
//  Copyright © 2018 RJ APPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    
    // States of Pakistan
    let states:[String] = ["Punjab","KPK","Sindh","Balochistan","Gilgat Baltistan","Capital Territory","Other"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    
        return 1
    
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    
        return states.count
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
        return states[row]
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        stateBtn.setTitle(states[row], for: UIControlState.normal)
        registerBtn.isHidden = false;
        stateBtn.isHidden = false;
        statePicker.isHidden = true;
        
    }
    
    @IBAction func clickStateBtn(_ sender: Any) {
    
        stateBtn.isHidden = true;
        registerBtn.isHidden = true;
        statePicker.isHidden = false;
    
    }
    
}

