programa {
  inclua biblioteca Tipos
  funcao inicio() {

    // inserir nome de pokes encontrados
    // exibir os pokes que tem
    // mostrar quantidade de Pókemons
    // procurar por nome 
    
    escreva("\nPokédex - Registro de Pokémons\n")

    inteiro tamanho = 0, total = 0
    cadeia procurado
    logico encontrado = falso


    escreva("\nInsira o numero total de Pokémons que pretende registrar: ")
    leia(tamanho)


    cadeia encontrados[tamanho]
    para(inteiro i=0; i<tamanho; i++){
      escreva("\nInsira nome dos Pokémons: ")
      leia(encontrados[i])
    }

    para(inteiro i=0; i<tamanho; i++){
      escreva(i+1,"º ",encontrados[i]," Pókemon adicionado a sua Pokédex\n")
    }

    escreva("\nTotal de Pókemons adicionados: ", tamanho)

    escreva("\nIndique o nome do Pókemon que deseja verificar: ")
    leia(procurado)
    para(inteiro i=0; i<tamanho; i++){
      se(procurado == encontrados[i]){
        encontrado = verdadeiro 
      }
    }

    se(encontrado){
      escreva("\nPókemon encontrado em sua Pókedex! ")
    }senao{
      escreva("\nVocê ainda não capturou esse Pokémon! ")
    }


  }
}
