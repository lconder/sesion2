//
//  ViewController.swift
//  sesion2
//
//  Created by Luis Conde on 09/01/18.
//  Copyright © 2018 Luis Conde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var txtFieldDistance: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var labelResult: UILabel!
    
    let mileUnit = 1.6034
    
    let kilometerUnit = 0.621371
    
    var convertedValue = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        labelResult.text = "Ingresa un valor a calcular"
        
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let distanceToConvert = Double(txtFieldDistance.text!)
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        
        if selectedIndex==0 {
            //de Millas a Km.
            convertedValue = distanceToConvert! * mileUnit
            print("\(distanceToConvert!) Millas = \(convertedValue) Km")
            labelResult.text = "\(distanceToConvert!) Millas = \(convertedValue) Km"
        }else{
            //de Km a Millas
            convertedValue = distanceToConvert! * kilometerUnit
            print("\(distanceToConvert!) Km = \(convertedValue) Millas")
            labelResult.text = "\(distanceToConvert!) Km = \(convertedValue) Millas"
        }
        
        
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

