// Collection Types - Dictionaries

// Declaração

let primeiroTrimestre: Dictionary<Int, String> = [1: "Janeiro", 2: "Fevereiro", 3: "Março"]
let segundoTrimestre: [Int: String] = [4: "Abril", 5: "Maio", 6: "Junho"]
let estadosBrasileiros = ["RJ": "Rio de Janeiro", "MG": "Minas Gerais", "SP": "São Paulo"]

var dicionarioVazio1 = Dictionary<Int, String>()
var dicionarioVazio2 = [Int: String]()

// Acessar Valores

if let nomeEstados = estadosBrasileiros["RJ"]{
    "Estado encontrado: \(nomeEstados)"
} else {
    "Estado não está no dicionario!"
}

"Total de itens: \(estadosBrasileiros.count)"


