---
layout: post
title: Condicionais em Ruby
date: 2018-09-10 18:51 -0300
tags: [Ruby]

---

Vamos falar hoje sobre estrutura de controle em ruby especificamente as condicionais. As condicionais são controles que executam um trecho de código depedendo de uma condição, as condicionais em Ruby são:

* If / elsif / else
* unless
* case

Mas não podemos falar de condicionais se não falarmos de operadores relacionais e os operadores lógicos.

## Operadores relacionais

* Igualdade **==**
* Diferente **!=**
* Maior que **>**
* Maior ou igual **>=**
* Menor **<**
* Menor ou igual **<=**

## Operadores Lógicos
* && (and) 
* \|\| (or)

Vamos explorar um pouco mais sobre as condicionais com um pouco dos operadores relacionais.

## IF
O if verifica se uma condição é verdadeira e apartir dessa verificação executa um trecho de código, segue o código abaixo utilizando também a igualdade:

{% highlight ruby %}
value = 30
if value == 30
	puts "Isso é verdade!"
end
{% endhighlight %}
## ELSE
O else seria um complemento do If, caso a verificação do if seja falsa o trecho de  código executado é o else, segue o exemplo abaixo:

{% highlight ruby %}
value = 30
if value < 10
	puts "valor menor que 10"
else
	puts "valor igual a 30"	
end
{% endhighlight %}
## ELSIF
O elsif é utilizado quando precisamos de mais condicionais em nosso if, segue abaixo um exemplo:

{% highlight ruby %}
value = 30
if value < 10
 	puts "valor menor que 10"
elsif value <20
	puts "valor igual a 20"
elsif value >= 50
	puts "valor maior de 50"
else
	puts "valor igual a 30"
end
{% endhighlight %}

## UNLESS
O Unless é o oposto do if ou seja ele é executado  quando a resposta da condição for falsa(false).

{% highlight ruby %}
value = 30
unless value = 10
	puts "valor = 30"
end
{% endhighlight %}
## CASE

O Case é muito parecido com o If, mas podemos utilizar quando existem vários Ifs encadiados onde cada condição é testada com a cláusula **when**,segue o código abaixo:

{% highlight ruby %}
mes_do_aniversario = 2
case mes_do_aniversario
when 1..6
	puts "Você nasceu do primeiro semestre"
when 7..12
	puts "Você nasceu do primeiro semestre"
else
 puts "Não existe esse mês"
end
{% endhighlight %}

Por enquanto é só isso, nos vemos na próxima.
