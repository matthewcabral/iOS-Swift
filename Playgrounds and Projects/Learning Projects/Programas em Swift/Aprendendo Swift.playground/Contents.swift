//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Variáveis: Tipos de Declaração

//Assim:
var nome : String
var num : Int
var num_double : Double
var num_float : Float
var escolha : Bool

nome = "Matheus"
num = 1 + 6
num_double = 5.6
num_float = 3.157544
escolha = true

//Ou Assim:
var nomee : String; "MATHEUS"
var numm : Int; 162
var num_doublee : Double; 29.99
var num_floaty : Float; 2.98545454
var escolhaa : Bool; false

print("O valor é: " + String(num) + " e " + String(num_float))

var num1 : Int
var num2 : Int
var total : Int

num1 = 20
num2 = 90
total = num1 + num2

print("O valor total é: " + String(total))









// Array: Você declara a variável e coloca o valor ou o tipo dela entre os símbolos "[ ]"

//Assim:
var nomess : [String]
nomess = ["TETEU"]
nomess = ["Matheus"]
nomess += ["Nild"]
nomess.append("Miriam")

print(nomess)
print(nomess[0])
print(nomess[1])
print(nomess[2])
print(nomess[0] + ", " + nomess[2] + ", " + nomess[1])

nomess.remove(at: 0) //Assim removemos um dos valores inseridos na variável, ou seja, dizemos qual dos valores queremos remover
print(nomess)

var numero : [Int] = []
numero.append(100)
numero += [200]
print(numero)
print(numero[0])





//Ou Assim:
var nomes = ["Matheus", "Nild", "Miriam"]

print(nomes)
print(nomes[0])
print(nomes[1])
print(nomes[2])
print(nomes[0] + ", " + nomes[1] + ", " + nomes[2])

nomes.remove(at: 2)
print(nomes)

//Exemplo
var frase : [String] = []

frase.append("Oi, meu nome é Matheus!")
frase += ["Tenho 19 anos"]
frase += ["Moro no Rio de Janeiro"]

print(frase)
print(frase[0] + " " + frase[2])







// Criar Sets

var lst = Set<String>()

lst.insert("Pizza")
lst.insert("Suco")
lst.insert("Suco")

print(lst)

var lista = Set<Int>()
let totalItens = 10
while lista.count < totalItens {
    let numero = Int( arc4random_uniform( UInt32(totalItens) ) ) + 1
    lista.insert( numero )
}
print( lista )

// Dicionários

var animais = [String: String]()

animais["Urso"] = "Animal Branco que hiberna!"
animais["Cachorro"] = "Melhor amigo do homem!"
animais["Gato"] = "Falsiane!"
animais["Galinha"] = "Minha Vizinha!"

print(animais["Galinha"]!)
print(animais["Gato"]!)
print(animais)

var meses_ano = [Int: String]()

meses_ano[1] = "Janeiro"
meses_ano[2] = "Fevereiro"
meses_ano[3] = "Março"
meses_ano[4] = "Abril"
meses_ano[5] = "Maio"
meses_ano[6] = "Junho"
meses_ano[7] = "Julho"
meses_ano[8] = "Agosto"
meses_ano[9] = "Setembro"
meses_ano[10] = "Outubro"
meses_ano[11] = "Novembro"
meses_ano[12] = "Dezembro"

print(meses_ano[1]!)







// Operadores Básicos

// OPERADORES ARITMÉTICOS

/*
    + Soma
    - Subtração
    / Divisão
    * Multiplicação
*/


// SOMA
var numero1 : Int
var numero2 : Int
var totall : Int

numero1 = 10
numero2 = 90

totall = numero1 + numero2

// SUBTRAÇÃO
totall = numero1 - numero2

// DIVISÃO
totall = numero1 / numero2

// MULTIPLICAÇÃO
totall = numero1 * numero2


// OPERADORES RELACIONAIS

/*
    == Igual a
    != Diferente
    > Maior que
    < Menor que
    >= Maior ou igual
    <= Menor ou igual
*/

var numm1 : Int
var numm2 : Int

numm1 = 10
numm2 = 10

numm1 == numm2
numm1 != numm2
numm1 > numm2
numm1 < numm2
numm1 >= numm2
numm1 <= numm2


// OPERADORES LÓGICOS

/*
 && and
 || or
*/

numm1 >= numm2 && numm1 == numero1
numm1 != numm2 || numm1 < numm2







// Estruturas condicionais

// IF ELSE

var carro : Double

carro = 23.500

if carro > 10.000 {
    true
} else {
    false
}

if carro >= 10.000 && carro < 12.000{
    true
} else {
    false
}

if carro >= 10.000 || carro < 12.000{
    true
} else {
    false
}


if carro >= 10.000 || carro < 12.000{
    true
} else if carro >= 10.000 && carro < 12.000 {
    true
} else {
    false
}












// Loop (For e While)

// FOR

/*
    for var i in 1..<6{
        print("Número: " + String(i))
    }

var comentarios : [String] = []

comentarios.append("Amei a foto!!! LINDO 😍😍😍😍")
comentarios.append("❤️❤️❤️❤️❤️")
comentarios.append("Que Foto FODAAAAAAA!!!!")
comentarios.append("Lindo!")

for comentarios in comentarios{
    print(comentarios)
}
*/





// While

var cont : Int = 0

// Dessa forma primeiro ele ve a condição e depois ele executa

/*
    while cont <= 6 {
        cont += 1
    }
*/


// Dessa forma primeiro ele executa e depois ele vê a condição

/*
    repeat{
        cont += 1
    } while cont < 6

*/












// Funções

/*
func multiplicar(n1 : Int, n2 : Int) -> Int{
    return n1 * n2
}

var no : Int = multiplicar(n1: 2, n2: 3)

no = no + 2
print(no)
*/

func diminuir(ano: Int) -> Int{
    return 2017 - ano
}

var idad : Int = diminuir(ano: 1939)
print(idad)







// Variáveis Opcionais (Colocar "?" após a definição da variável)

var valor1 : Int
var valor2 : Int?
var totalll : Int = 0

valor1 = 10
valor2 = 100

if let valor2Testado = valor2{
    totalll = valor1 + valor2Testado
}

print(totalll)









// Classes e Objetos


// Exemplo
class casa {
    // Atributos
    var cor : String
    init(cor: String) {
        self.cor = cor
    }
    
    //Métodos
    func getCor() -> String{
        return self.cor
        // Quando eu escrevo Self eu estou me referindo ao conteúdo da própria classe
    }
}

// Criar o Objeto

var Casa = casa(cor: "Azul")
Casa.getCor()

var Casa2 = casa(cor: "Amarelo")
Casa2.getCor()



class cachorro{
    // Atributos
    var corCachorro: String
    
    init(corCachorro: String) {
        self.corCachorro = corCachorro
    }
    
    func correr() -> String{
        return "correr"
    }
    
    func latir() -> String{
        return "latir"
    }
}

var Cachorro = cachorro(corCachorro: "Amarelo")

Cachorro.correr()
Cachorro.latir()





// Herança

class animal {
    var color = "Preto"
    
    func dormir() -> String {
        return "Dormir"
    }
}

class dog : animal{
    func latirr() -> String {
        return "latir"
    }
}

class bird : animal{
    func voar() -> String {
        return "voar"
    }
}

class papagaio : bird{
    func repetir() -> String {
        return "Repetir"
    }
}

// criar o objeto

var Dog = dog()
Dog.color
Dog.dormir()
Dog.latirr()

var Bird = bird()
Bird.color
Bird.dormir()
Bird.voar()

var Papagaio = papagaio()
Papagaio.repetir()
























