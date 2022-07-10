Algoritmo "Agencia de Viagens"
// Disciplina   : [Linguagem e Lógica de Programação]
// Descrição   : Usando conceitos de programação estruturada (Vetor), criar em pseudocódigo
//               um menu para simular um cadastro para uma agência de viagens com as seguintes
//               funções: cadastro de cliente e cadastro de destino, criar também uma consulta para cada estrutura de dados.
// Autor(a)    :  Milena Almeida de Aguiar
// Data atual  : 08/06/2022

Var
   // Seção de Declarações das variáveis globais

   clientes: vetor [1..10,1..4] de caractere // vetor de cadastro de clientes
   destinos: vetor [1..10,1..4] de caractere // vetor de cadastro de destinos
   cliente: vetor [1..4] de caractere // vetor de auxiliar de clientes
   destino: vetor [1..4] de caractere // vetor de auxiliar de destino
   qtdCli, qtdDes : inteiro // variaveis que guarda quantidade de clientes na hora de cadastrar


procedimento cadastrarCliente // cadastra clientes nosistema

var

   codCli, nome, sobrenome, cpf : caractere  // dados do cliente
   quantidade, i, j : inteiro // variaveis de iteracao

inicio
   
   escreval("CADASTRO DE CLIENTE")
   escreva("Deseja cadastrar quantos clientes? -> ")
   leia(qtd) // ler a quantidade de clientes o usuario irá cadastrar
   
   qtdCli <- qtd // grava a quantidade na variavel qtdCli
   
   para i de 1 ate qtd faca // laço para ler os dados passado pelo usuairo e salvo nas variaveis
        escreva("Digite o codigo do cliente: -> ")
        leia(codCli) // ler o codigo do cliente e salva na variavel codCli
        escreva("Digite o nome do cliente: -> ")
        leia(nome) // ler o nome do cliente e salva na variavel nome
        escreva("Digite o sobrenome do cliente: -> ")
        leia(sobrenome) // ler o sobrenome do cliente e salva na variavel sobrenome
        escreva("Digite o cpf do cliente: -> ")
        leia(cpf) // ler o cpf do cliente e salva na variavel cpf
        
   escreval("---------------------------------------------")
   
       // salva no vetor de clientes
       clientes[i, 1] <- codCli
       clientes[i, 2] <- nome
       clientes[i, 3] <- sobrenome
       clientes[i, 4] <- cpf
      // a posicao i indica a coluna da matriz os indices 1 a 4 indica a linha da matriz

   fimpara
   // escreve a informacao dos dados cadastrados
   escreval(qtd, " clientes cadastrados no sistema")
   para j de 1 ate qtd faca
        escreval("Codigo: ", clientes[j, 1], " NOME: ", clientes[j, 2], " SOBRENOME: ", clientes[j, 3], " CPF: " ,clientes[j, 4])
   fimpara
   
fimprocedimento


procedimento consultaCliente // Consulta cliente cadastrado pelo cpf

var
 consulta : caractere
 i : inteiro
 encontrado : logico
inicio

   escreval("CONSULTA DE CLIENTE")
   escreva("Digite o cpf do cliente:_ ")
   leia(consulta)
   para i de 1 ate qtdCli faca
        se consulta = clientes[i,4] entao
           encontrado := verdadeiro
           
           escreval("DADOS DO CLIENTE")
           escreval("Codigo: ", clientes[i,1])
           escreval("Nome: ", clientes[i,2])
           escreval("Sobrenome: ", clientes[i,3])
           escreval("CPF: ", clientes[i,4])
           interrompa
        senao
           encontrado := falso
        fimse
   fimpara
   se encontrado = falso entao
      escreval("Cliente não cadastrado")
   fimse
fimprocedimento


procedimento menu // Menu do Sistema

var
   opc : inteiro
   
inicio

   escreval("1- cadastrar | 2 - consultar ")
   escreva(">> ")
   leia(opc)
   escolha opc
     caso 1
     cadastrarCliente
     menu
     //interrompa
     caso 2
     consultaCliente
     menu
     //interrompa
     outrocaso
     escreval("opcao invalida")
     menu
   fimescolha
fimprocedimento


// ponto de partida
Inicio

      escreval("AGENCIA DE VIAGENS")
      menu



Fimalgoritmo