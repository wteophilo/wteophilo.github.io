---
layout: post
title: Matriz de GUT
date: 2022-02-17 18:59 +0000
tags: [Agile, Gestão de Projetos]
---

A matriz GUT é uma técnica útil de priorização de resolução de problemas, podemos usar esse método para definir a urgência de cada uma delas. A sigla GUT representa os três pilares usado para  priorizar uma atividade: a gravidade, urgência e tendência de cada atividade. Vamos passar por esses itens:

### Gravidade

O primeiro pilar que vamos abordar é o de gravidade esse pilar leva em consideração o **impacto** que a atividade poderá causar na organização caso não seja realizado o mais rapido possível. Então, ao analisar a gravidade da atividade é necessário se perguntar: quais efeitos a não realização dessa atividade poderá causar ao longo do tempo?

### Urgência

O seguindo pilar é  a urgência, esse pilar leva em consideração o **tempo** para realizar a atividade. Quanto menor o tempo, maior a urgência. Então, ao analisar a urgência você precisa se perguntar: quanto tempo essa atividade pode esperar para ser realizado?

### Tendência 

O terceiro e último pilar é a tendência, esse pilar leva em consideração a **probabilidade de crescimento do problema** um bom exemplo para a tendência são problemas que podem nascer pequenos e ao passar de alguns dias se tornar algo muito grande. Então, ao analisar a tendência você precisa se perguntar: se eu não resolver esse problema hoje, com qual intensidade ele vai piorar?

### Matriz GUT

Agora que entendemos os pilares podemos organizar-los em uma matriz com valores de 1 à 5, aonde cada valor possui um peso. Segue a tabela abaixo:

| Nota | Gravidade | Urgência | Tendência |
| -- | --- | --- | --- |
|1	|Sem gravidade | Sem urgência | Sem tendência de piorar|
|2	|Pouco grave | Pouco urgente |	Piorar em longo prazo|
|3	|Grave Urgente | Piorar em médio prazo|Irá piorar a médio prazo|
|4	|Muito grave |	Muito urgente |	Piorar em curto prazo|
|5	|Extremamente grave	| Extremamente urgente | Piorar rapidamente|

### E como funciona? 

Vamos imaginar algumas atividades que um time de suporte abriu para correção, são elas:

| Problema                                            | Gravidade | Urgência | Tendência | Grau Criticidade(GxUxT) | Sequência de atividades |
| --------------------------------------------------- | --------- | -------- | --------- | ----------------------- | ----------------------- |
| Boletos sendo gerados sem dados                     |           |          |           |                         |                         |
| Erro ao alterar senha do app                        |           |          |           |                         |                         |
| Falha na autenticação ao validar codigo sms enviado |           |          |           |                         |                         |



Junto com os times podemos atribuir os valores dos pilares de GUT. As pontuações são distribuídas em uma nota de 1 a 5 para cada pilar GUT. 

| Problema                                            | Gravidade | Urgência | Tendência | Grau Criticidade(GxUxT) | Sequência de atividades |
| --------------------------------------------------- | --------- | -------- | --------- | ----------------------- | ----------------------- |
| Boletos sendo gerados sem dados                     | 4         | 4        | 3         |                         |                         |
| Erro ao alterar senha do app                        | 2         | 2        | 2         |                         |                         |
| Falha na autenticação ao validar codigo sms enviado | 5         | 5        | 5         |                         |                         |



Para obter o valor da coluna de Grau de Criticidade basta multiplicar os valores da linha:

| Problema                                            | Gravidade | Urgência | Tendência | Grau Criticidade(GxUxT) | Sequência de atividades |
| --------------------------------------------------- | --------- | -------- | --------- | ----------------------- | ----------------------- |
| Boletos sendo gerados sem dados                     | 4         | 4        | 3         | 48                      |                         |
| Erro ao alterar senha do app                        | 2         | 2        | 2         | 8                       |                         |
| Falha na autenticação ao validar codigo sms enviado | 5         | 5        | 5         | 125                     |                         |


Legal agora temos a criticidade de cada item. Agora basta atribuir o valor na coluna de sequência quanto maior a criticidade melhor colocado será na tabela

| Problema | Gravidade | Urgência | Tendência | Grau Criticidade(GxUxT) | Sequência de atividades |
| -- | -- | -- | -- | -- | -- |
| Boletos sendo gerados sem dados | 4 | 4 | 3 | 48 | 2 |
| Erro ao alterar senha do app  | 2 | 2 | 2 | 8 | 3 |
| Falha na autenticação ao validar codigo sms enviado | 5 | 5 | 5 | 125 | 1 |


Por enquanto é só isso, nos vemos na próxima.

