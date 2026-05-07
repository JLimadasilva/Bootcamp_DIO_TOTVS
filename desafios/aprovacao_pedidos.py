# Recebe a entrada do usuário (valor e prioridade)
entrada = input().strip()
valor_str, prioridade = entrada.split()
valor = int(valor_str)

# TODO: Implemente a lógica condicional para decidir entre "aprovado", "revisao" ou "rejeitado" conforme as regras do desafio.
if prioridade == "baixa":
    resultado = "rejeitado"
elif prioridade == "alta":
    if valor <= 1000:
        resultado = "aprovado"
    else:
        resultado = "revisao"
else:  # prioridade "media"
    resultado = "aprovado"  # Tanto faz o valor, segundo a tabela

print(resultado)