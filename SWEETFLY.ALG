Algoritmo "SweetFly"

tipo
   reserva = registro
      nr_aviao: inteiro
      passageiro: caractere
   fimregistro

   //OPCAO 1
procedimento registrar_aviao()
inicio
   escreval(" --- REGISTRO DE AVI�ES --- ")
   para i de 0 ate 3 faca
      escreval("Informe o nr do avi�o ", i+1)
      leia(aviao[i])
   fimpara
fimprocedimento

//OPCAO 2
procedimento registrar_assentos()
inicio
   escreval(" --- REGISTRO DE ASSENTOS --- ")
   para i de 0 ate 3 faca
      escreval("Informe a quantidade de assentos do aviao ", i+1)
      leia(assentos[i])
   fimpara
fimprocedimento


//FUN��O VERIFICA AVI�O
funcao verifica_aviao(aviao_reserva: inteiro):logico
var
   achou: logico
inicio

   achou <- falso

   para i de 0 ate 3 faca
      se aviao[i] = aviao_reserva entao
         indice_reserva <- i
         achou <- verdadeiro
      fimse
   fimpara

   retorne achou
fimfuncao

//FUN��O VERIFICA ASSENTOS
funcao verifica_assentos(aviao_reserva: inteiro): logico
var
   tem_assentos: logico
inicio

   tem_assentos <- falso

   se assentos[indice_reserva] > 0 entao
      escreval("Avi�o tem ", assentos[indice_reserva], " assentos dispon�veis.")
      tem_assentos <- verdadeiro
      assentos[indice_reserva] <- assentos[indice_reserva] - 1
   fimse

   retorne tem_assentos
fimfuncao

//OPCAO 3
procedimento fazer_reserva()
var
   aviao_reserva: inteiro
   passageiro_reserva: caractere

inicio
   escreval("--- RESERVAS ---")
   escreval("Informe o nr do aviao para reserva")
   leia(aviao_reserva)

   se verifica_aviao(aviao_reserva) entao
      se verifica_assentos(aviao_reserva) entao
         escreval("Fazer Reserva")
            escreval("Informe o nome do passageiro:")
            leia(passageiro[i].reserva)
         fimpara
         //implementar
      senao
         escreval("N�o existem mais assentos dispon�veis!")
      fimse
   sen�o
      escreval("Avi�o n�o localizado.")
   fimse
fimprocedimento

//OPCAO 4
procedimento consulta_aviao()
Escreval("Digite o nome do avi�o que deseja consultar: ")
leia(aviao[i])
fimprocedimento

//OPCAO 5
procedimento consulta_passageiro()
Escreval("Digite o nome do passageiro que deseja consultar: ")
leia()
fimprocedimento

Var
   aviao: vetor[0..3] de inteiro
   assentos: vetor[0..3] de inteiro
   checkin: vetor[0..19] de reserva
   opcao, i, indice_reserva: inteiro

Inicio

   repita
      escreval("--- SWEET FLY ---")
      escreval(" MENU: ")
      escreval("1: Registrar o n�mero de cada avi�o.")
      escreval("2: Registrar o quantitativo de assentos dispon�veis em cada avi�o.")
      escreval("3: Reservar passagem a�rea.")
      escreval("4: Realizar consulta por avi�o.")
      escreval("5: Realizar consulta por passageiro.")
      escreval("6: Encerrar.")
      leia(opcao)
      limpatela

      escolha opcao
      caso 1
         registrar_aviao()!
      caso 2
         registrar_assentos()
      caso 3
         fazer_reserva()
      caso 4
         consulta_aviao()
      caso 5
         consulta_passageiro()
      fimescolha

   ate opcao = 6

   escreval("Obrigado por utilizar o SWEET FLY!")

Fimalgoritmo