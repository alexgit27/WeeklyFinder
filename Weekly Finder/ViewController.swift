//
//  ViewController.swift
//  Weekly Finder
//
//  Created by Alexandr on 25.01.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayInput: UITextField!
    @IBOutlet weak var monthInput: UITextField!
    @IBOutlet weak var yearInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
   
    @IBAction func findDay(_ sender: UIButton) {
        let calendar = Calendar.current
        var dataComponents = DateComponents()
        dataComponents.day = Int(dayInput.text!)
        dataComponents.month = Int(monthInput.text!)
        dataComponents.year = Int(yearInput.text!)
        
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "EEEE"
        dataFormatter.locale = Locale(identifier: "us_US")

//        dataFormatter.locale = Locale(identifier: "uk_UK")
        
        let data = calendar.date(from: dataComponents)
        let weekday = dataFormatter.string(from: data!)
        resultLabel.text = weekday
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

