//
//  DetalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Matheus Cabral on 22/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class detalhesFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }
}
