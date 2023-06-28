// Collection Types - Arrays

// Declaração

let paises1: Array<String> = ["México", "Portugal", "Holanda"]
let paises2: [String] = ["Brasil", "Alemanha", "Espanha"]
let paises3 = ["França", "China", "Canadá"]

let todosPaises = paises1 + paises2 + paises3

let arrayComValoresRepetidos = [Int](count: 5, repeatedValue: 11)
var arrayVazio: [String] = []

// Acessar valores, pesquisar

let primeiroItem = todosPaises[0]
let ultimoItem = todosPaises[todosPaises.count - 2]
let itemEspecífico = todosPaises[5]


todosPaises.count
todosPaises.isEmpty

if let indice = find(todosPaises, "Holanda"){
    "\(todosPaises[indice]) encontrada no array"
}

// Interação

for pais in todosPaises{
    print(pais)
}

print("\n")

for (indice, valor) in enumerate(todosPaises){
    println("\(indice) : \(valor)")
}

// Manipulação

var cores = ["Laranja", "Amarelo"]

cores.append("Azul")
cores += ["Verde"]
cores += ["Branco", "Preto"]
cores.insert("Roxo", atIndex: 1)


cores[1...3] = ["Vermelho"]
cores.removeAtIndex(1)
cores.removeAll(keepCapacity: false)
cores = []
