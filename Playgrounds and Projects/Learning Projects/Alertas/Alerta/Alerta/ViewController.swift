//
//  ViewController.swift
//  Alerta
//
//  Created by Matheus Cabral on 10/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func AbrirAlerta(_ sender: Any) {
        //Criar alerta
        let alertaController = UIAlertController(title: "New Contact", message: "Would you like to add a new Contact?", preferredStyle: .actionSheet)
        let acaoConf = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let acaoCanc = UIAlertAction(title: "No", style: .destructive, handler: nil)
        alertaController.addAction(acaoCanc)
        alertaController.addAction(acaoConf)
        
        present(alertaController, animated: true, completion: nil)
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

