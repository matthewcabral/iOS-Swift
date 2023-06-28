//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Matheus Cabral on 07/01/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnNovaFrase(_ sender: Any) {
        var frases : [String] = []
        var numAleatorio = arc4random_uniform(11)
        
        frases.append("As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.")
        frases.append("Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.")
        frases.append("A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.")
        frases.append("A vida é sobre criar impacto, não uma renda")
        frases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos")
        frases.append("O sucesso normalmente vem para quem está ocupado demais para procurar por ele")
        frases.append("Os empreendedores falham, em média, 3,8 vezes antes do sucesso final. O que separa os bem-sucedidos dos outros é a persistência")
        frases.append("Escolha uma ideia. Faça dessa ideia a sua vida. Pense nela, sonhe com ela, viva pensando nela. Deixe cérebro, músculos, nervos, todas as partes do seu corpo serem preenchidas com essa ideia. Esse é o caminho para o sucesso")
        frases.append("Todos os seus sonhos podem se tornar realidade se você tem coragem para persegui-los")
        frases.append("Sucesso? Eu não sei o que isso significa. Eu sou feliz. A definição de sucesso varia de pessoa para pessoa Para mim, sucesso é paz anterior")
        frases.append("Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança")
        frases.append("Um homem de sucesso é aquele que cria uma parede com os tijolos que jogaram nele")
        
        lblFrase.text  = frases[Int(numAleatorio)]
        
    }
    
    @IBOutlet weak var lblFrase: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

