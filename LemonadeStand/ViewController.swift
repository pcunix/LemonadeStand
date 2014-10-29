//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Tony on 10/29/14.
//  Copyright (c) 2014 A.P. Lawrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CashLabel: UILabel!

    @IBOutlet weak var LemonsLabel: UILabel!
    
    @IBOutlet weak var IceLabel: UILabel!
    
    var CashOnHand=10
    var LemonCount=1
    var IceCount=1
    let CostofLemon=2
    let CostofIce=1
    
    func updatedisplay() {
        CashLabel.text = "$ \(CashOnHand)"
        LemonsLabel.text = "\(LemonCount)"
        IceLabel.text = "\(IceCount)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addlemons(sender: AnyObject) {
        if (CashOnHand >= CostofLemon) {
            CashOnHand -= CostofLemon
            LemonCount++
            updatedisplay()
            
        }
        
    }

    @IBAction func AddIce(sender: AnyObject) {
        if (CashOnHand >= CostofIce) {
            CashOnHand -= CostofIce
            IceCount++
            updatedisplay()
            
        }

    
    }
    
    @IBAction func subtractLemons(sender: AnyObject) {
        
        if (LemonCount >= 1) {
            CashOnHand += CostofLemon
            LemonCount--
            updatedisplay()
            println("Lemon \(LemonCount)")
        }
    }

   
    
    @IBAction func SubtractIce(sender: AnyObject) {
        
        if (IceCount >= 1) {
            CashOnHand += CostofIce
            IceCount--
            updatedisplay()
            println("Ice \(IceCount)")
        }
    }

  


 
}

