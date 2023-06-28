//
//  ViewController.swift
//  Signos
//
//  Created by Matheus Cabral on 10/07/17.
//  Copyright © 2017 Matheus Cabral. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //Array que configura os Signos
    var signos: [String] = []
    
    //Array que configura os Significados dos Signos
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Array que adiciona os Signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //Array que adiciona os Significados
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias trazendo um novo e positivo movimento à sua vida social e aproximando os amigos. Você estará mais aberto e simpático e pode atrair pessoas importantes para o seu crescimento profissional. Momento de bons contatos.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando dias de movimento positivo em seus projetos profissionais e planos de carreira. Um novo projeto pode surgir e marcar um novo caminho. Uma promoção pode ser aprovada.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando um positivo movimento nos projetos de médio prazo. Os contatos com pessoas e empresas estrangeiras são mobilizados e boas novidades podem surgir. Uma viagem pode ser marcada e/ou realizada.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e deixa você mais fechado e voltado para suas emoções mais profundas, que passam por um momento de estabilidade e equilíbrio. O dia pode envolver uma importante negociação envolvendo uma grande soma de dinheiro.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando um movimento agradável e positivo em seus relacionamentos, pessoais e profissionais. O momento pode envolver um acordo ou a negociação de uma sociedade ou parceria comercial.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando um movimento agradável e positivo em seus relacionamentos, pessoais e profissionais. O momento pode envolver um acordo ou a negociação de uma sociedade ou parceria comercial.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando um movimento agradável na vida social, com a aproximação dos amigos. Um romance, que vem sendo desenhado pelo Universo, pode começar a qualquer momento.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e trazendo uma forte necessidade de distanciar-se da vida social e ficar mais perto dos seus. Sua casa, neste momento, é um agradável refúgio. Aproveite as boas energias e dedique-se aos estudos ou a uma boa leitura.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e movimentando sua vida social. Você estará mais aberto e receptivo, simpático e comunicativo. O momento pode envolver uma negociação ou acordo, que pode resultar em um novo contrato.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e indicando um movimento positivo em sua vida financeira. Um pagamento atrasado pode ser realizado ainda hoje. O dia é ótimo para assinar contratos que envolvam o aumento de seus rendimentos.")
        
        significadoSignos.append("A Lua entra em seu signo e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e trazendo bom humor e alegrias, simpatia e necessidade de socializar, depois de alguns dias de interiorização. Aproveite as boas energias e saia com amigos para divertir-se. O dia promete boas novidades.")
        
        significadoSignos.append("A Lua entra em Aquário e recebe um ótimo aspecto de Vênus e Júpiter amenizando as densas energias dos últimos dias e trazendo uma forte necessidade de interiorização e maior contato com seu mundo emocional, que passa por um momento de lucidez e equilíbrio. O momento é ótimo para praticar a meditação.")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Quantidade de linhas que vai possuir na lista, de acordo com a quantidade de signos
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula
    }
    
    //Toda vez que o usuário tocar na linha, esse método vai ser chamado
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //Vai tirar a seleção que o usuário tocou na lista
        
        //Assim criamos alertas na tela para mostrar o significado do signo com a mensagem do Significado do Signo
        let alertaController = UIAlertController(title: "Signo do dia", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        //Aqui criamos o botão de confirmar do alerta
        let acaoConf = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        //Aqui adicionamos o botão confirmar no alerta
        alertaController.addAction(acaoConf)
        present(alertaController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

