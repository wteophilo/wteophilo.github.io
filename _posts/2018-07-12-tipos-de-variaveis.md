---
layout: post
title: Tipos de Variáveis em Ruby
date: 2018-07-12 14:54 -0300
tags: [Ruby]
---

Apesar de ser uma linguagem dinâmica o Ruby é uma linguagem fortemente tipada, diferente de outras linguagems como Java ou C++, quando declaramos uma variável precisamos definir também seu tipo, por exemplo:
 
{% highlight java %}
String nome = "Willian"
{% endhighlight %}

Neste post vamos ver:
* Declarando uma variável
* Tipos de variáveis
* Problemas de conversão

## Declarando uma variável

Para declarar uma variável é bem simples basta dar um nome e atribuir seu valor assim o tipo da variável é definido implicitamente. Veja o exemplo abaixo:

{% highlight ruby %}
> nome = "Willian" => "Willian"
> idade = 28 => 28
{% endhighlight %}

## Tipos de variáveis

Como falamos anteriormente o Ruby possui alguns tipos, são eles:

* **Fixnum**: números inteiros
* **Float**: números decimais
* **Bignum**: números inteiros muito grandes
* **String**: valores alfanumérico
* **FalseClass/TrueClass**: valores booleanos

Você deve estar se perguntando "Então podemos alterar o valor de uma variável sem precisar fazer conversões... mas isso não dá problema não?" Como podemos ver no exemplo abaixo apenas trocando os valores não tem problema

{% highlight ruby %}
> nome = "Willian" => "Willian"
> nome = 5000 => 5000
{% endhighlight %}

## Problemas de conversão

Mas em nosso código do dia a dia provavelmente vamos usar uma variável em outros lugares é ai que mora o perigo...
Vamos analisar a seguinte situação digamos que temos uma a variável com o nome "idade" do tipo inteiro(Fixnum), por algum motivo durante o desenvolvimento achamos melhor trocar o seu valor para String mas esquecemos que somamos algum outro valor inteiro ao longo do código, o que acontece? Segue código abaixo:

{% highlight ruby %}
> idade = 30 => 30 
> idade = 'WIL' => "WIL" 
> idade + 10
TypeError: no implicit conversion of Fixnum into String
	from (irb):16:in `+'
	from (irb):16
	from /home/wt/.rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
{% endhighlight %}

Se fizermos a operação inversa e tentar somar uma String em um inteiro(Fixnum) também temos o mesmo problema de conversão:

{% highlight ruby %}
> idade = 30 => 30 
> idade + "WIL"
TypeError: String can't be coerced into Fixnum
	from (irb):36:in `+'
	from (irb):36
	from /home/wt/.rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
{% endhighlight %}

Em Ruby tudo é classe inclusive os tipos são classes então se alterarmos o tipo da variável e nessa variável usamos um método exclusivo da classe também vamos ter problemas, veja o exemplo abaixo:

{% highlight ruby %}
> def caixa_alta(nome)
>  nome.upcase
> end
> nome = 30
> caixa_alta nome =>
NoMethodError: undefined method `upcase' for 30:Fixnum
        from (irb):41:in `caixa_alta'
        from (irb):43
        from /home/wt/.rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
{% endhighlight %}


Por enquanto é só isso, nos vemos na próxima.
