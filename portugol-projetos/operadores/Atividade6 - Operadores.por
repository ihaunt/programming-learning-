programa
{
	funcao inicio()
	{
		real valor, total
		inteiro quantidade
		caracter vip, cupom

		escreva("Valor do produto: ")
		leia(valor)

		escreva("Quantidade: ")
		leia(quantidade)

		escreva("Cliente VIP? (S/N): ")
		leia(vip)

		escreva("Possui cupom? (S/N): ")
		leia(cupom)

		total = valor * quantidade

		se (vip == 'S' ou vip == 's')
		{
			total = total - (total * 0.15)
		}

		se (cupom == 'S' ou cupom == 's')
		{
			total = total - (total * 0.10)
		}

		se (total > 2000)
		{
			total = total - (total * 0.05)
		}

		escreva("Valor final: R$ ", total)
	}
}
