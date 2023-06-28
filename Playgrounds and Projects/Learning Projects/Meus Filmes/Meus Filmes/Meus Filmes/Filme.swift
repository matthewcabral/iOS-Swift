//
//  Filme.swift
//  Meus Filmes
//
//  Created by Matheus Cabral on 22/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

//Aqui eu crio uma classe chamada filme, onde vai ser adicionado os nomes dos filmes, as imagens e as descrições
class Filme{
    var titulo:  String!
    var descricao: String!
    var imagem: UIImage!
    
    //Aqui eu inicializo a classe (usa-se "init" para isso)
    init(titulo: String, descricao: String, imagem: UIImage) {
        
        //Aqui eu digo que estou falando da variavel dentro da classe filme (usa-se o "self" para isso)
        self.titulo = titulo //O segundo "titulo" é o que foi usado dentro da "init"
        self.descricao = descricao
        self.imagem = imagem
        
    }
}
