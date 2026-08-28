programa {
  funcao inicio() {
    
    const real CONSULTA = 100.00 
    const real CONSULTA_CONVENIO = 50.00
    const real EXAMES_NORMAL = 70.00
    const real EXAMES_CONVENIO = 30.00

    cadeia especialidade
    cadeia cadastroPaciente
    cadeia cadastroEscialista
    cadeia data
    cadeia horario

    logico convenio
    inteiro consulta, exames
  

    real total
    real consultaCobrar , examesConbrar

    escreva("\nSistema de Clínica Médica\n")
    escreva("\n1-Cadastro de médicos ")
    escreva("\n2-Cadastro de paciente e agendamento ")
    escreva("\n3-Cálculo do valor da consulta. ")

    inteiro opcao
    leia(opcao)
    escolha(opcao){
      caso 1: 
        escreva("\nIndique nome do escialista: ")
        leia(cadastroEscialista)
        escreva("\nIndique a especialidade ")
        leia(especialidade)
        escreva("Especialista cadastradoo\n")
      pare

      caso 2: 
        escreva("\nIndique nome do paciente: ")
        leia(cadastroPaciente)
        escreva("\nIndique a especialidade que este deseja passar ")
        leia(especialidade)
        escreva("Indique data pretendida ")
        leia(data)
        escreva("\nIndique horário ")
        leia(horario)
        escreva("\nPossui convenio? ")
        leia(convenio)

        escreva("\nPaciente e horario agendados\n ")
      pare

      caso 3: {
        escreva("\nTem convenio? (1-para sim  ou 2-para nao)")
        leia(convenio)
        escreva("\nAdicionar consulta? Quantas? ")
        leia(consulta)
        escreva("\nAdicionar exames? Quantos? ")
        leia(exames)

        se (convenio == 1){

          consultaCobrar = CONSULTA_CONVENIO * consulta
          examesConbrar = EXAMES_CONVENIO * exames

          total = examesConbrar + consultaCobrar
          escreva("\nTotal a ser cobrado exames + consultas com convenio: R$ ", total, "\n")
        }senao se (convenio == 2){

          consultaCobrar = CONSULTA * consulta
          examesConbrar = EXAMES_NORMAL * exames

          total = examesConbrar + consultaCobrar
          escreva("\nTotal a ser cobrado exames + consultas: R$ ", total, "\n")
        }senao("\nEscolha opcao valida ")
      pare}
    }
  }
}
