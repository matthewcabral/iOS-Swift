//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Matheus Cabral on 07/01/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPrecoAlcool: UITextField!
    @IBOutlet weak var txtPrecoGas: UITextField!
    @IBOutlet weak var lblResul: UILabel!
    
    @IBAction func btnCalcular(_ sender: Any) {
        var precoAlcool : Double = 0
        var precoGas : Double = 0
        var resultado : Double = 0
        
        if let resultadoAlcool = txtPrecoAlcool.text {
            if resultadoAlcool != "" {
                if let resultadoNumero = Double(resultadoAlcool){
                    precoAlcool = resultadoNumero
                }
            }
        }
    
        if let resultadoGas = txtPrecoGas.text {
            if resultadoGas != "" {
                if let resultadoNumero = Double(resultadoGas){
                    precoGas = resultadoNumero
                }
            }
        }
        
        resultado = precoAlcool / precoGas
        
        if resultado >= 0.7 {
            lblResul.text = "Melhor Utilizar Gasolina!"
        } else {
            lblResul.text = "Melhor Utilizar Álcool!"
        }
            
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

