---
layout: post
title: RSpec-Executando apenas um teste
excerpt: Muitas vezes queremos rodar apenas um teste em nosso projeto e não toda nossa switch, para isso vamos ver alguns comandos que possam nos ajudar nessa tarefa...
date: 2018-04-11 21:03 -0300
tags: [TDD,RSpec,Ruby on Rails]
---

Muitas vezes queremos rodar apenas um teste em nosso projeto e não toda nossa switch, para isso vamos ver alguns comandos que possam nos ajudar nessa tarefa.

### RSpec caminho
Digamos que estamos fazendo um projeto em ruby, separamos nossos testes por pasta e queremos executar apenas um arquivo, então basta executar o comando:

{% highlight PowerShell %}
rspec /pasta/arquivo_spec.rb
{% endhighlight %}

Assim todos os teste dentro do arquivo serão executados.

### Executando teste pelo título
As vezes queremos executar apenas um teste dentro do nosso arquivo de teste, podemos fazer isso usando o sufixo -e "título", por exemplo:

{% highlight PowerShell %}
rspec /nome_classe/arquivo_spec.rb -e "título"
{% endhighlight %}

### Executando teste pela linha  
Podemos também executar um teste por uma linha do arquivo,vamos utilizar o mesmo conceito do item anterior mas ao invés de buscar o título apenas utilizamos a linha que queremos executar.

{% highlight PowerShell %}
rspec /nome_classe/arquivo_spec.rb:linha
{% endhighlight %}

Por enquanto é só isso, nos vemos na próxima.
