//
//  DetalhesViewController.swift
//  Cara ou Coroa
//
//  Created by Matheus Cabral on 09/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import Foundation

import UIKit

class DetalhesViewController: UIViewController {
    
    @IBOutlet weak var moedaImageView: UIImageView!
    
    var numeroRandomicoRecebido: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if numeroRandomicoRecebido == 0{ //cara
            moedaImageView.image = #imageLiteral(resourceName: "moeda_cara")
        } else { //coroa
            moedaImageView.image = #imageLiteral(resourceName: "moeda_coroa")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
