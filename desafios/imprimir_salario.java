/*Desafio
Faça um programa que calcule e imprima o salário a ser transferido para um funcionário.
Para realizar o cálculo receba o valor bruto do salário e o adicional dos benefícios.
O salário a ser transferido é calculado da seguinte maneira:
(valor bruto do salário - percentual de imposto mediante ao salário) + adicional dos benefícios
Para calcular o percentual de imposto segue as alíquotas:


De R$ 0.00 a R$ 1100.00 = 5.00%


De R$ 1100.01 a R$ 2500.00 = 10.00%


Maior que R$ 2500.00 = 15.00%


ENTRADA
A entrada consiste em vários arquivos de teste, que conterá o valor bruto do salário e adicional dos benefícios. Conforme mostrado no exemplo de entrada a seguir.

SAIDA
Para cada arquivo da entrada, terá um arquivo de saída. E como mencionado no Desafio, será gerado uma linha com um número que será a diferença entre o valor bruto do salário somado com o adicional dos benefícios e o percentual de imposto mediante a faixa salarial que está sendo pedido. */

import java.util.Scanner;

public class imprimir_salario {
    public static void main(String[] args) {
        Scanner leitorDeEntradas = new Scanner(System.in);

        float valorSalario = leitorDeEntradas.nextFloat();
        float valorBeneficios = leitorDeEntradas.nextFloat();

        float valorImposto = 0;

        if (valorSalario <= 1100) {
            valorImposto = 0.05f * valorSalario;
        } else if (valorSalario <= 2500) {
            valorImposto = 0.10f * valorSalario;
        } else {
            valorImposto = 0.15f * valorSalario;
        }

        float saida = valorSalario - valorImposto + valorBeneficios;
        System.out.println(String.format("%.2f", saida));
    }
}
