//
//  ViewController.swift
//  Idade do Cachorro
//
//  Created by Matheus Cabral on 01/11/16.
//  Copyright © 2016 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var txtCachorro: UITextField!
    @IBOutlet weak var lblRes: UILabel!
    @IBAction func btnDescIdade(_ sender: Any) {
        var idade = Int(txtCachorro.text!)!
        
        idade = idade * 7
        lblRes.text = "A idade do cachorro é: " + String(idade)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

