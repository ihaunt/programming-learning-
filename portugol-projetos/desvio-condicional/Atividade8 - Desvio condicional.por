programa {
  funcao inicio() {
    
    const real CUPOM = 35 // 35%

    inteiro estoque = 20, estoqueNovo
    cadeia cadastroProduto, tipoPagamento
    real carrinhoCompras, valorUnitario, valorFinal 

    inteiro quantidadeProdutos, adicionarItem
    logico adicionarCupom


    escreva("\nSistema de Loja Virtual\n")
    escreva("\n1- Para cadastro de produtos ")
    escreva("\n2- Efetuar compra ")



    inteiro opcao
    leia(opcao)
    escolha(opcao){
    caso 1:
      escreva("\nInsira o tipo de produto: (ex: camisa, calça e etc)\n")
      leia(cadastroProduto)
      escreva("\nInsira valor unitário do produto ")
      leia(valorUnitario)
      escreva("\nProduto: ",cadastroProduto, " Preço: ", valorUnitario, " cadastrados \n" )
    pare

    caso 2:{
      escreva("\nSelecione: \n")
      escreva("\n 1 - Adicionar produto ao carrinho: ")
      leia(adicionarItem)
      se (adicionarItem == 1){
        escreva("\nIndique preço do produto: ")
        leia(valorUnitario)
        escreva("\nIndique quantidade de produtos ")
        leia(quantidadeProdutos)
        escreva("\nAdicionar cupom de 35%? (sim ou nao) ")
        leia(adicionarCupom)
        escreva("\nTipo de pagamento: ")
        leia(tipoPagamento)
       
        carrinhoCompras = valorUnitario * quantidadeProdutos
          se (adicionarCupom == 1){
            valorFinal = carrinhoCompras - (carrinhoCompras * CUPOM / 100)
            escreva("\nValor total da compra:R$ ",valorFinal, " Desconto aplicado? ",adicionarCupom, "Tipo de pagamento: ",tipoPagamento)
          }senao {
            carrinhoCompras = valorUnitario * quantidadeProdutos
            escreva("\nValor total da compra:R$ ",carrinhoCompras, " Desconto aplicado? ",adicionarCupom , "Tipo de pagamento: ",tipoPagamento )
          }
         
        se(adicionarItem == 1){
          estoqueNovo = estoque - 1
          escreva("\nEstoque atualizado: ",estoqueNovo, "\n")  
        }
      }pare}
    }
  }
}
