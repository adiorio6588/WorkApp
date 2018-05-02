//
//  ViewController.swift
//  WorkApp
//
//  Created by Anthony Diorio on 4/14/18.
//  Copyright © 2018 antFarmDevTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var location1: UITextField!
    @IBOutlet var location2: UITextField!
    @IBOutlet var location3: UITextField!
    @IBOutlet var location4: UITextField!
    @IBOutlet var location5: UITextField!
    
    @IBOutlet var pieceCount1: UITextField!
    @IBOutlet var pieceCount2: UITextField!
    @IBOutlet var pieceCount3: UITextField!
    @IBOutlet var pieceCount4: UITextField!
    @IBOutlet var pieceCount5: UITextField!
    
    @IBOutlet var dollarAmount1: UITextField!
    @IBOutlet var dollarAmount2: UITextField!
    @IBOutlet var dollarAmount3: UITextField!
    @IBOutlet var dollarAmount4: UITextField!
    @IBOutlet var dollarAmount5: UITextField!
    
    @IBOutlet var mdwCount1: UITextField!
    @IBOutlet var mdwCount2: UITextField!
    @IBOutlet var mdwCount3: UITextField!
    
    
    
    @IBOutlet var pieceTotal: UILabel!
    @IBOutlet var dollarTotal: UILabel!
    @IBOutlet var mdwTotal: UILabel!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

//---------------------------- CLEAR BUTTONS----------------------------------//
    
    @IBAction func clearLocationsButton(_ sender: UIButton) {
        self.location1.text = nil
        self.location2.text = nil
        self.location3.text = nil
        self.location4.text = nil
        self.location5.text = nil
    }
    
    @IBAction func clearTotalsButton(_ sender: UIButton) {
        self.pieceCount1.text = nil
        self.pieceCount2.text = nil
        self.pieceCount3.text = nil
        self.pieceCount4.text = nil
        self.pieceCount5.text = nil
        
        self.dollarAmount1.text = nil
        self.dollarAmount2.text = nil
        self.dollarAmount3.text = nil
        self.dollarAmount4.text = nil
        self.dollarAmount5.text = nil
        
        self.mdwCount1.text = nil
        self.mdwCount2.text = nil
        self.mdwCount3.text = nil
        
        self.pieceTotal.text = nil
        self.dollarTotal.text = nil
        self.mdwTotal.text = nil
    }

    

    
//---------------------------- PIECE TOTALS ----------------------------------//
    
    @IBAction func addTotal(_ sender: Any) {
        let firstPiece = Int(pieceCount1.text!)
        let secondPiece = Int(pieceCount2.text!)
        let thirdPiece = Int(pieceCount3.text!)
        let fourthPiece = Int(pieceCount4.text!)
        let fifthPiece = Int(pieceCount5.text!)
        
        
        if firstPiece != nil && secondPiece != nil && thirdPiece != nil && fourthPiece != nil && fifthPiece != nil {
            
            
        let pieceOutPut = Int(firstPiece! + secondPiece!) + Int(thirdPiece! + fourthPiece!) + Int(fifthPiece!)
        
        pieceTotal.text = " \(pieceOutPut)"
        } else {
            
            let alertController = UIAlertController(title: "Missing Info", message:
                "Enter 0 for blank counts", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        
        
//---------------------------- DOLLAR TOTALS ----------------------------------//
        
        let firstDollar = Double(dollarAmount1.text!)
        let secondDollar = Double(dollarAmount2.text!)
        let thirdDollar = Double(dollarAmount3.text!)
        let fourthDollar = Double(dollarAmount4.text!)
        let fifthDollar = Double(dollarAmount5.text!)
        
        if firstDollar != nil && secondDollar != nil && thirdDollar != nil && fourthDollar != nil && fifthDollar != nil {
        
        let dollarOutPut = Double(firstDollar! + secondDollar!) + Double(thirdDollar! + fourthDollar!) + Double(fifthDollar!)
        
        dollarTotal.text = " $\(dollarOutPut)"
        } else {
            let alertController = UIAlertController(title: "Missing Info", message:
                "Enter 0 for blank counts", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)

        }
        
   
//---------------------------- MDW TOTALS ----------------------------------//
        
        let mdwCountOne = Int(mdwCount1.text!)
        let mdwCountTwo = Int(mdwCount2.text!)
        let mdwCountThree = Int(mdwCount3.text!)
        
        if mdwCountOne != nil && mdwCountTwo != nil && mdwCountThree != nil {
        
        let mdwOutPut = Int(mdwCountOne! + mdwCountTwo!) + Int(mdwCountThree!)
    
        mdwTotal.text = " \(mdwOutPut)"
            
        } else {
            let alertController = UIAlertController(title: "Missing Info", message:
                "Enter 0 for blank counts", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)

        }

}

}
