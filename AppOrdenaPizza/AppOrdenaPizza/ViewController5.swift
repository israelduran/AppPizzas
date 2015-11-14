//
//  ViewController5.swift
//  AppOrdenaPizza
//
//  Created by Israel Durán Martínez on 14/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var caracteristicasPizza: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    @IBOutlet weak var cocina: UIButton!
    @IBOutlet weak var mensajeCocina: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        cocina.enabled = false
        
        var caracteristicas : String = caracteristicasPizza.text!
        var ingredientesRes : String = ingredientes.text!
        
        print("INGREDIENTES:")
        print(ValoresPizza.ingredientesOnOff)
        
        print("Tamaño: \(ValoresPizza.tamaño)")
        print("Masa: \(ValoresPizza.masa)")
        print("Queso: \(ValoresPizza.queso)")
        
         caracteristicas += ValoresPizza.valoresTamaño[ValoresPizza.tamaño]! + " - " + ValoresPizza.valoresMasa[ValoresPizza.masa]! + " - " + ValoresPizza.valoresQueso[ValoresPizza.queso]!
        caracteristicasPizza.text = caracteristicas
        
        ingredientesRes += ingredientesResultado().0
        ingredientes.text = ingredientesRes
        
        if(ingredientesResultado().1 == 1)
        {
            cocina.enabled = true
        }
        
    }

    @IBAction func mandarCocina(sender: AnyObject) {
        mensajeCocina.text = "Enviado a cocina!!!!!!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ingredientesResultado() -> (String, Int)
    {
        var ingredientes : String = ""
        var bandera = 0
        var suma = 0
        
        for i in 0...9
        {
            suma += ValoresPizza.ingredientesOnOff[i]
        }
        
        if(suma > 5)
        {
            return ("Los ingredientes no pueden ser más de 5",0)
        }
        
        if (suma == 0)
        {
            return ("Selecciona por lo menos un ingrediente",0)
        }
        
        for i in 0...9
        {
            let valor = ValoresPizza.ingredientesOnOff[i]
            
            if(valor == 1)
            {
                if bandera == 0
                {
                    ingredientes += ValoresPizza.ingredientes[i]
                    bandera=1
                }
                else
                {
                    ingredientes += ", " + ValoresPizza.ingredientes[i]
                }
                
                print(ValoresPizza.ingredientes[i])
            }
        }
        
        return (ingredientes, 1);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
