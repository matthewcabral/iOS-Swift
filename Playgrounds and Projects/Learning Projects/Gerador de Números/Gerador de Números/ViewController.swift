//
//  ViewController.swift
//  Gerador de Números
//
//  Created by Matheus Cabral on 06/01/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func GerarNum(_ sender: Any) {
        var lista = Set<Int>()
        let totalItens = 90
        if lista.count < totalItens {
            let numero = Int( arc4random_uniform( UInt32(totalItens) ) ) + 1
            lista.insert( numero )
            resul.text = String(numero)
            NumAnterior.text = NumAnterior.text! + resul.text! + " "
        }
    }

    
    @IBOutlet weak var resul: UILabel!
    @IBOutlet weak var NumAnterior: UITextView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

