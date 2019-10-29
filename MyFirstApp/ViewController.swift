//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Tiffany Obi on 10/28/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    
    // implicit unwrapping of an optional
    // weak is a memory optimizing feauture we will talk about further in the unit. basically the view cintiller will have a weak reference to the label outlet.
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
       // view.backgroundColor = UIColor.blue
    }
    
    @IBAction func colorChangeButtonPressed(_ sender: UIButton) {
       
     //   view.backgroundColor = .red
      //  displayLabel.text =
        
      //  "The background color is red"
   /*
        guard let buttonTitle = sender.titleLabel?.text else {
            return
        }
        switch  buttonTitle.lowercased() {
        case "red":
            displayLabel.text = "Yummy Pomagranate"
            view.backgroundColor = .red
        case "blue":
            displayLabel.text = "Beautiful Blut Blueblerries"
            view.backgroundColor = .blue
        case "green":
                displayLabel.text = "Green is the color of life and limes. "
                view.backgroundColor = .green
        default:
            view.backgroundColor = .white
        }
        */
        
        let newColor: (color: UIColor?, name: String)
        
        switch sender.tag { // tag is an int
        case 0:
            newColor = (.blue, "blue")
        case 1:
            newColor =
                (.red, "red")
        case 2:
            newColor =
                (.green, "green")
        default:
            newColor = (.white,"white")
        }
        view.backgroundColor = newColor.color
        
        displayLabel.text = "The background color is \(newColor.name)"

    }
    
}

