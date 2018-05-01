//
//  ViewController.swift
//  WorkApp
//
//  Created by Anthony Diorio on 4/14/18.
//  Copyright © 2018 antFarmDevTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

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

//    @objc func dismissKeyboard() {
//        //Causes the view (or one of its embedded text fields) to resign the first responder status.
//        view.endEditing(true)
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    


//---------------------------- PIECE TOTALS ----------------------------------//
    
    @IBAction func addTotal(_ sender: Any) {
        let firstPiece = Double(pieceCount1.text!)
        let secondPiece = Double(pieceCount2.text!)
        let thirdPiece = Double(pieceCount3.text!)
        let fourthPiece = Double(pieceCount4.text!)
        let fifthPiece = Double(pieceCount5.text!)
        
        
        if firstPiece != nil && secondPiece != nil && thirdPiece != nil && fourthPiece != nil && fifthPiece != nil {
            
            
        let pieceOutPut = Double(firstPiece! + secondPiece!) + Double(thirdPiece! + fourthPiece!) + Double(fifthPiece!)
        
        pieceTotal.text = "\(pieceOutPut)"
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
        
        dollarTotal.text = "\(dollarOutPut)"
        } else {
            let alertController = UIAlertController(title: "Missing Info", message:
                "Enter 0 for blank counts", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)

        }
        
   
//---------------------------- MDW TOTALS ----------------------------------//
        
        let mdwCountOne = Double(mdwCount1.text!)
        let mdwCountTwo = Double(mdwCount2.text!)
        let mdwCountThree = Double(mdwCount3.text!)
        
        if mdwCountOne != nil && mdwCountTwo != nil && mdwCountThree != nil {
        
        let mdwOutPut = Double(mdwCountOne! + mdwCountTwo!) + Double(mdwCountThree!)
    
        mdwTotal.text = "\(mdwOutPut)"
            
        } else {
            let alertController = UIAlertController(title: "Missing Info", message:
                "Enter 0 for blank counts", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)

        }

}

}
