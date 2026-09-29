programa
{
    inteiro valorSaldo = 1000
    cadeia nome

    funcao inicio()
    {
        inteiro opcao

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("\nOlá ", nome, " é um prazer ter você por aqui!\n")

        faca
        {
            escreva("\n========== MENU ==========\n")
            escreva("1 - Saldo\n")
            escreva("2 - Extrato\n")
            escreva("3 - Saque\n")
            escreva("4 - Depósito\n")
            escreva("5 - Transferência\n")
            escreva("6 - Sair\n")
            escreva("===========================\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    consultarSaldo()
                    pare

                caso 2:
                    consultarExtrato()
                    pare

                caso 3:
                    realizarSaque()
                    pare

                caso 4:
                    realizarDeposito()
                    pare

                caso 5:
                    realizarTransferencia()
                    pare

                caso 6:
                    escreva("\n", nome, ", foi um prazer ter você por aqui!\n")
                    pare

                caso contrario:
                    erro()
            }

        } enquanto (opcao != 6)
    }


    funcao logico validarSenha()
    {
        inteiro senha

        escreva("\nDigite sua senha: ")
        leia(senha)

        se (senha == 3589)
        {
            retorne verdadeiro
        }
        senao
        {
            escreva("\nSenha incorreta!\n")
            retorne falso
        }
    }


    funcao consultarSaldo()
    {
        se (validarSenha())
        {
            escreva("\n===== SALDO =====\n")
            escreva("Saldo atual: R$ ", valorSaldo, "\n")
        }
    }


    funcao consultarExtrato()
    {
        se (validarSenha())
        {
            escreva("\n===== EXTRATO =====\n")
            escreva("Depósito: + R$ 500\n")
            escreva("Compra: - R$ 100\n")
            escreva("Compra: - R$ 50\n")
            escreva("Depósito: + R$ 300\n")
            escreva("-------------------\n")
            escreva("Saldo atual: R$ ", valorSaldo, "\n")
        }
    }


    funcao realizarSaque()
    {
        inteiro valor

        se (validarSenha())
        {
            escreva("\n===== SAQUE =====\n")
            escreva("Digite o valor do saque: ")
            leia(valor)

            se (valor <= 0)
            {
                escreva("\nOperação não autorizada\n")
            }
            senao se (valor > valorSaldo)
            {
                escreva("\nOperação não autorizada\n")
            }
            senao
            {
                valorSaldo = valorSaldo - valor

                escreva("\nSaque realizado com sucesso!\n")
                escreva("Saldo atual: R$ ", valorSaldo, "\n")
            }
        }
    }


    funcao realizarDeposito()
    {
        inteiro valor

        escreva("\n===== DEPÓSITO =====\n")
        escreva("Digite o valor do depósito: ")
        leia(valor)

        se (valor <= 0)
        {
            escreva("\nOperação não autorizada\n")
        }
        senao
        {
            valorSaldo = valorSaldo + valor

            escreva("\nDepósito realizado com sucesso!\n")
            escreva("Saldo atual: R$ ", valorSaldo, "\n")
        }
    }


    funcao realizarTransferencia()
    {
        inteiro conta
        inteiro valor

        se (validarSenha())
        {
            escreva("\n===== TRANSFERÊNCIA =====\n")

            escreva("Digite o número da conta: ")
            leia(conta)

            escreva("Digite o valor da transferência: ")
            leia(valor)

            se (valor <= 0)
            {
                escreva("\nOperação não autorizada\n")
            }
            senao se (valor > valorSaldo)
            {
                escreva("\nOperação não autorizada\n")
            }
            senao
            {
                valorSaldo = valorSaldo - valor

                escreva("\nTransferência realizada com sucesso!\n")
                escreva("Conta: ", conta, "\n")
                escreva("Valor transferido: R$ ", valor, "\n")
                escreva("Saldo atual: R$ ", valorSaldo, "\n")
            }
        }
    }


    funcao erro()
    {
        escreva("\nOpção inválida!\n")
        escreva("Por favor, informe um número entre 1 a 6.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */