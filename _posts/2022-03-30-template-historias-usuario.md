---
layout: post
title: Template Histórias de Usuário
date: 2022-03-30 19:42 +0000
img: template-historias-usuario/pbb.png
tags: [Agile, Gestão de Projetos]
---

Começamos um nova feature do produto e o time estava animado para iniciar essa feature, após algumas semanas as entregas estavam sendo feitas, porem algo estava me chamando a atenção. A cada entrega dessa feature mais e mais bugs estavam sendo abertos durante a etapada de desenvolvimento.

Durante uma retrospectiva com time foi dito que a forma como as [histórias][User Story] estavam sendo escritas eram um pouco confusas ou faltavam informações. Assim identificamos a cauza raíz do problema e como plano de ação me dei uma tarefa para ajudar o time com uma maneira de melhorar a forma de escrita das histórias e durante a minha pesquisa encontrei o [Product Backlog Building][PBB].

### O que é Product Backlog Building?

"O Product Backlog Building (PBB) consiste em vivenciar na prática a elaboração e criação de um Product Backlog efetivo e colaborativo, esclarecendo as user stories e o backlog dos times, e utilizando o PBB Canvas como ferramenta facilitação."

Durante a leitura do livro um template de para criação de histórias de usuário me chamou a atençãoesse template possui algumas partes:

* Título da história
* Criterio de aceite
* Habilitadores 

Seguir vou passar por cada um desses itens:

### Título da história

Podemos utilizar o modelo ARO

```
[Ação][Resultado][Objeto]
```

Exemplos:
* Calcular a quantidade total vendida por um vendedor
* Efetuar a inscrição no evento
* Realizar a pesquisa do livro

Descrição:

```
Como <papel> posso <funcão> para <valor de negocio>
```

Exemplos:
* Como suporte posso logar no backoffice para desbloquear um cartão virtual
* Como usuário posso visualizar o histórico da fatura no app para conferir todas as compras feitas anteriormente


### Critério de aceite:

Critério de aceite é um formato textual que descreve como validar numa história de usuario. Geralmente é uma lista de verificação que determa quando uma história de usuário está concluida e funcionando.

Podemos utilizar a sintase [Gherkin][Gherkin] para descrever os comportamentos desejados pelo produto, formato:

Genérico:

```
Cenário<Título>
Dado que <contexto inicial>
Quando <evento ou ação>
Então <resultado esperado>
```

Exemplo:

```
Cenário: Saque disponivel
Dado que o cartão é valido e a conta tem saldo maior que R$500
Quando o cliente solicitar o saque de R$500
Então o caixa eletronico deve dispensar R$500,00
```

Granular:

```
Cenário<Título>
Dado que <contexto inicial>
E <contexto inicial>
Quando <evento ou ação>
E <evento ou ação>
Então <resultado esperado>
```

Exemplo:

```
Cenario: Logar com sucesso
Dado que estou na página de login do Outlook 360
Quando preencho o campo email com um email válido
E clico em avançar
E preencho  campo enha com uma senha válido
Então sou direcionado para minha caixa de entrada do Outlook 360
```

Uma alteração que achei melhor alterar foi ao final de cada cenário incluir o wireframe ou link do figma  

### Habilitadores<Opcional>:

Os habilitadores são estimos que o time pode precisar estudar/pesquisar antes de iniciar  o desenvolvimento  da história. São separados em:

* Habilitador Exploratório:
* Habilitador Técnico

Exemplo de  Habilitador exploratório

Estudar o endpoint API de integração com as plataforma s e compartilhamento de apresentações on-line(SlideShare e Speaker Deck)

Exemplo de Habilitador Técnico

Consumir o endpoint embed como uma tag de link no cabeçalho para que possa ser detectado automaticamente quando incorporar a apresentação

### Observações:
Lembrando que as histórias deve seguir o padrão INVEST e se possivel as tarefas o [padrão SMART][SMART]


Por enquanto é só isso, nos vemos na próxima.

### Referências:
* [User Story][User Story]
* [Behaviour Driven Development][BDD]
* [Product Backlog Build][PBB]
* [Gherkin][Gherkin]

[PBB]: https://www.amazon.com.br/dp/B097C9RHF7/ref=sr_1_4?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=pbb&qid=1623867809&sr=8-4
[Gherkin]: https://cucumber.io/docs/gherkin/
[BDD]: https://medium.com/@ronilsonribeiro/escrita-do-bdd-no-processo-de-desenvolvimento-469ea46540db
[User Story]: https://agilementoring.wordpress.com/tag/user-story/
[SMART]: https://wteophilo.github.io/2018/04/04/requisitos-smart.html