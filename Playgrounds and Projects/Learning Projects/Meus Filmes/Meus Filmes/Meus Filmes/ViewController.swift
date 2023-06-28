//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Matheus Cabral on 22/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //Aqui eu crio um array onde serão recebidos os dados da classe filme.swift"
    var filmes: [Filme] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Aqui eu crio uma instância desse filme
        var filme: Filme
        filme = Filme(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        filme = Filme(titulo: "Star Wars", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        filme = Filme(titulo: "Deadpool", descricao: "Descrição 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        filme = Filme(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        filme = Filme(titulo: "Star Wars", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        filme = Filme(titulo: "Deadpool", descricao: "Descrição 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        filme = Filme(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        filme = Filme(titulo: "Star Wars", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        filme = Filme(titulo: "Deadpool", descricao: "Descrição 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
    }
    
    //Aqui eu crio uma função para retornar a quatidade de seções que irá ter na tabela
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Aqui eu crio uma função para retornar a quantidade de linhas que irá ter na tabela (de acordo com a quantidade de filmes adicionados)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    //Aqui configuramos a nossa célula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row] //Assim recuperamos a primeira linha que vai ser montada
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula //Aqui eu converto o tableView para usar o que está em FilmeCélula
        celula.filmeImageView.image = filme.imagem
        celula.TituloLabel.text = filme.titulo
        celula.DescricaoLabel.text = filme.descricao
        
        /* celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        */
        
        //celula.textLabel?.text = filme.titulo
        //celula.imageView?.image = filme.imagem
        
        
        return celula
        
    }
    
    //Aqui eu faço com que as imagens e descrições que foram clicadas na tela sejam mostradas na tela de exibição de detalhes dos filmes
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! detalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

