// Conceitos:



/* 
    - Variáveis x Constantes
    - Imprimir valores no console
    - Concatenação de valores
    - Comentários
    - Ponto e vírgula
*/

let moeda = "R$"
var sal = 1_000.00
var nomeFuncionario = "Matheus"

sal = 2_000.00

"O salário de \(nomeFuncionario) é \(moeda) \(sal)"



// Integers

var anoNas: Int = 1997

Int.min
Int.max

UInt.min
UInt.max

Int8.min
Int8.max

UInt8.min
UInt8.max

Int16.min
Int16.max

UInt16.min
UInt16.max

Int32.min
Int32.max

UInt32.min
UInt32.max

Int64.min
Int64.max

UInt64.min
UInt64.max






// Floating-Point Numbers

let salario: Float = 1000.00






// Type Safety and Type Inference

var idades: Int = 50
// idade = 50.5 está incorreto

var tipoEmplicito: String = "Olá!"
var tipoImplícito = "Olá!"

var doubleInferido = 30.56






// Numeric Literals

let decimalInt = 17
let binarioInt = 0b10001
let octalInt = 0o21
let hexadecimalInt = 0x11

let decimalExpoenteBaseDez = 1.25e3
let hexadecimalExpoenteBaseDois = 0xFp2
let variavelNumerica = 0005_837.12_3

// Numeric Type Conversion

let inteiroPequeno: Int8 = 5
let inteiroMédio: Int16 = 1_000

let somaInteiroDiferentes = Int16(inteiroPequeno) + inteiroMédio

let valorDecimal = 2.67
let valorConvertidoParaInt = Int(valorDecimal)






// Type Aliases

typealias IntSenSinal = Int16
let idade: IntSenSinal = 40






// Booleans

var estouComSono = false

estouComSono = true

if estouComSono {
    "Preciso dormir!"
} else {
    "Dormir pra que?!"
}






// Tuples

let ultimoLançamentoApple = (2015, "iOS 9")

let (ano, Lançamento) =  ultimoLançamentoApple
"Em \(ano), a Apple lançou o \(Lançamento)!"
let (somenteAno, _) =  ultimoLançamentoApple
"Em \(somenteAno), a Apple lançou o iPad Air 2)!"

"Ano: \(ultimoLançamentoApple.0)"
"Lançamento: \(ultimoLançamentoApple.1)"

let dadosConta = (agencia: 12345, conta: 54321, tipo: "Conta Corrente")
"Agencia: \(dadosConta.agencia)"
"Conta: \(dadosConta.conta)"
"Tipo: \(dadosConta.tipo)"






// Optionals

var valor1: Int
var valor2: Int?

valor1 = 3
valor2 = 4

// let total = valor1 + valor2

if let valorGarantido = valor2 {
    let total = valor1 * valorGarantido
} else {
    "Não possui valor!"
}






// Assertions

var idadeAdulto = 18

assert(idadeAdulto >= 0, "Idade não pode ser menor do que 0")

"Continuação do código..."






// Operadores Básicos

// Atribuição

var valor3 = 10
var valor4 = 20

valor3 + valor4

var (x, y) = (10, 20)
x
y

// Aritméticos

let soma = 2 + 3
let subtração = 9 - 3
let multiplicação = 3 * 3
let divisão = 8 / 4

let concatenarStrings = "str1 " + " str2"

// Resto da Divisão

let restoDivisão = 5 % 2
let restoDivisãoPontoFlutuante = 5 % 2.4

// Incremento e Decremento

var i = 0
++i           // i = i + i
--i           // i = i - i

var valorBase = 1
// var valorAtribuido = ++valorBase
var valorAtribuido = valorBase++

valorBase
valorAtribuido

// Inverter Sinal

let cinco = 5
let cincoNegativo = -cinco
let cincoPositivo = -cincoNegativo

let a = 5
let b = a

// Atribuição Composta

var c = 6
c -= 2
c += 2
c *= 2
c /= 2

// Comparação

1 == 1
1 != 2
1 > 2
1 < 2
1 >= 2
1 <= 2

let salarioMinimo = 724.00
let meuSalario = 200.00

if meuSalario < salarioMinimo{
    let conclusao = "Ganho mal pra Caramba!"
} else {
    let conclusao = "Poderia ser Pior!"
}

let conclusao = meuSalario < salarioMinimo ? "Ganho mal pra Caramba!" : "Poderia ser Pior!"

// Range (..x ou ...x)

for indice in 1...3 {
    println(indice)
}

// Logicos (NOT, AND e XOR)

var tenhoCarro = false
var tenhoMoto = true
var estouDoente = false

if !tenhoCarro {
    "Vou de Ônibus!"
} else {
    "Vou de Carro!"
}

if tenhoCarro || tenhoMoto{
    "Pelo menos eu não vou de Ônibus!"
} else {
    "É, não tem jeito! Vou ter que ir de Ônibus mesmo..."
}

if tenhoCarro && tenhoMoto{
    "Posso escolher qual usar!"
} else if !tenhoCarro || tenhoMoto{
    "Posso ir de Moto!"
} else if tenhoCarro || !tenhoMoto{
    "Posso ir de Carro!"
} else {
    "É, não tem jeito! Vou ter que ir de Ônibus mesmo..."
}

if (!tenhoCarro && !tenhoMoto) || estouDoente{
    "É melhor ficar em casa mesmo!"
} else {
    "Posso Sair!"
}






// Strings e Caracteres

// String Literals

let minhaString = "Strings literais são simplesmente uma sequência fixa de caracteres."

// Caracteres Especiais

let barraInvertida = "Cidade\\Estado"
let tab = "Nome:\tJoão"
let quebraLinha = "Nome:\nJoão"
let aspasDuplas = "\"Entre aspas\""

// Inicializando uma String Vazia

let stringVazia = ""
let outraStringVazia = String()

if stringVazia.isEmpty{
    "A String está Vazia!"
}

// Mutabilidade de string (var x let) // NSString -  NSMutableString

var stringMutavel = "Esta é "
stringMutavel += "uma string mutável"

let stringImutavel = "Esta e uma string imutável"
//stringImutavel += "Por isso, ocorre erro nesta linha"

// Em Swift, strings são tipos por valor, em Objective-C era por referência

var string1 = "Valor original!"
var string2 = string1
string2 = "Valor Alterado!"

string1
string2

// Caracteres

for caracter in "Brasil"{
    println(caracter)
}

let cifrao: Character = "$"

let cidade = "Barcelona"
"Cidade possui \(count(cidade)) caracteres"

// interpolação de strings

let salarioo = 1_200.00
let quantidadeMeses = 7

"Em \(quantidadeMeses) meses eu ganho R$\(salarioo * Double(quantidadeMeses))"

// Comparação de strings

let stringOne = "Olá"
let stringTwo = "Olá"

stringOne == stringTwo

// HasPrefix / HasSuffix

let esporte = "Futebol de Campo"

esporte.hasPrefix("Futebol")
esporte.hasSuffix("Campo")

// Uppercase e Lowercase

let nome = "Matheus Cabral Rosa"
let nome2 = "matheus cabral rosa"
let nome3 = "MATHEUS CABRAL ROSA"

nome.lowercaseString
nome.uppercaseString
nome2.uppercaseString
nome3.lowercaseString

nome.lowercaseString == nome2.lowercaseString
nome.uppercaseString == nome3
nome2 == nome3.lowercaseString
