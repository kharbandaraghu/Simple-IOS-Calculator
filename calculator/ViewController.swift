//
//  ViewController.swift
//  calculator
//
//  Created by Raghav Kharbanda on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {
//    Labels
    @IBOutlet weak var labelup: UILabel!
    @IBOutlet weak var labeldown: UILabel!
//    Functions for typing
    @IBAction func ac(_ sender: Any) {
        labelup.text = ""
        labeldown.text = ""
    }
    @IBAction func bracketL(_ sender: Any) {
        labelup.text = labelup.text! + "("
    }
    @IBAction func bracketR(_ sender: Any) {
        labelup.text = labelup.text! + ")"
    }
    @IBAction func divide(_ sender: Any) {
        labelup.text = labelup.text! + "/"
    }
    @IBAction func multiply(_ sender: Any) {
        labelup.text = labelup.text! + "*"
    }
    @IBAction func minus(_ sender: Any) {
        labelup.text = labelup.text! + "-"
    }
    @IBAction func plus(_ sender: Any) {
        labelup.text = labelup.text! + "+"
    }
    @IBAction func equal(_ sender: Any) {
//        do {
            let exp: NSExpression = NSExpression(format: labelup.text!)
            let result: Double = exp.expressionValue(with:nil, context: nil) as! Double
            labeldown.text = String(result)
            labelup.text = ""
//        } catch {
//            labeldown.text = "Math Error!"
//        }
    }
    @IBAction func point(_ sender: Any) {
        labelup.text = labelup.text! + "."
    }
    @IBAction func Del(_ sender: Any) {
        labelup.text = String(labelup.text!.dropLast())
    }
    @IBAction func zero(_ sender: Any) {
        labelup.text = labelup.text! + "0"
    }
    @IBAction func one(_ sender: Any) {
        labelup.text = labelup.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        labelup.text = labelup.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        labelup.text = labelup.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        labelup.text = labelup.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        labelup.text = labelup.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        labelup.text = labelup.text! + "6"
    }
    @IBAction func seveq(_ sender: Any) {
        labelup.text = labelup.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        labelup.text = labelup.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        labelup.text = labelup.text! + "9"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        WHen view loads, set labels to nothing
        labelup.text = ""
        labeldown.text = ""
    }


}

