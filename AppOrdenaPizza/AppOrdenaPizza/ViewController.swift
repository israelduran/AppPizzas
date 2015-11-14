//
//  ViewController.swift
//  AppOrdenaPizza
//
//  Created by Israel Durán Martínez on 13/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentoTamaño: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionSegmentoTamaño(sender: AnyObject)
    {
        ValoresPizza.tamaño = segmentoTamaño.selectedSegmentIndex
    }

}

