---
layout: post
title: Escopos de Variáveis em Ruby
date: 2018-10-07 16:11 -0300
tags: [Ruby]
---

Anteriormente falamos sobre os [tipos de variáveis][tipos-ruby]  que podemos utilizar no Ruby, agora vamos abordar os escopos das variáveis.

O Ruby não possui nenhuma palavra chave para definir um escopo, usamos simbolos para identifica-los. Os escopos são:

- Local
- Global($)
- Instância(@)
- Classe(@@)


Com o decorrer deste post vamos mostrar exemplos da utilização dessas variáveis. 

## Variáveis Locais

As variáveis locais só podem ser acessadas dentro do método/bloco onde foram declaradas, veja o código abaixo:

```ruby
def conta_ate_dez
    for i in 1..10
        p i
    end
end 

p i
=> 1 2 3 4 5 ... 10
```

Ao tentar acessar a variável **"i"** fora do método o erro abaixo será exibido:

```powershell
=> undefined local variable or method `i' for main:Object (NameError)
```


## Variáveis Globais($)

As variáveis globais  podem ser acessadas em qualquer parte de do código, por conveção o simbolo **$** (cifrão) deve ser utilizado. Segue o exemplo abaixo:

```ruby
$global = "2.5.3"
puts "The scope is #{defined? $global}" 
=> The scope is global-variable
```

## Variáveis de Instância(@)

Uma variável de instância é uma variável cujo valor é específico ao objeto e não à classe. Em geral possui uma valor diferente em cada objeto membro da classe, utilizamos o **@** para identificar esse tipo de variável. Abaixo um exemplo desse tipo de variável:

```ruby
class ComicBook
    def initialize
        @name = "Boku no Hero"
        @year = 2014
        @author = 'Kōhei Horikoshi'
    end 
end 
```

Um método bem legal para listar todas as variáveis de instância de um objeto é **instance_variables**, vamos executar esse método na classe que criamos acima:

```ruby
manga = ComicBook.new
p manga.instance_variables
=>[:@name, :@year, :@autor]
```

## Variáveis de Classe(@@)

Uma variável de classe é uma variável  que armazena seu próprio estado, quando o estado é alterado em algum objeto automaticamente o estado é alterado para todos os objetos, utilizamos **@@** para indentificar esse tipo de variável. Abaixo um exemplo:

```ruby
class Vehicle
    @@number_of_doors = 0
    
    def self.number_of_doors
        @@number_of_doors
    end
end

class Car < Vehicle
    @@number_of_doors = 4
end

puts "Number of doors #{Vehicle.number_of_doors} - Vehicle"
=> Number of doors 4 - Vehicle

puts "Number of doors #{Car.number_of_doors} - Car" 
=>Number of doors 4 - Car

```

Por enquanto é só isso, nos vemos na próxima.

[tipos-ruby]: https://wteophilo.github.io/2018/07/12/tipos-de-variaveis.html