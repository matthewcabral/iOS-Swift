//
//  ViewController.swift
//  Cara ou Coroa
//
//  Created by Matheus Cabral on 09/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jogarMoeda"{
            let NumRandom = arc4random_uniform(2)
            let viewControllerDestino = segue.destination as! DetalhesViewController
            viewControllerDestino.numeroRandomicoRecebido = Int(NumRandom)
        }
    }
}
