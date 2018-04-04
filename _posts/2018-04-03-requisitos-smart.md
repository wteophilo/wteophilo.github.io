---
layout: post
comments: true
title: Requisitos Smart
date: 2018-04-03 21:35 -0300
img: requisitos_smart.jpg
tags: [arquitetura,requisitos]
---

Quando estamos desenvolvendo uma nova aplicação precisamos pensar nos requisitos.
Basicamente existem três tipos de requisitos:

* Funcionais
* Não Funcionais
* Arquiteturais

Neste artigo vamos focar nos **requisitos arquiteturais**. Este tipo de requisito é geralmente confundido com requisitos não relacionais mas a utilização é uma pouco diferente.

Durante o levantamento de requisitos podemos classificar quando um requisito possui algum significado a nossa arquitetura, ou seja,  é necessário alguma tomada de decisão tecnológica.

Existem algumas técnicas que podemos utilizar para validação dos requisitos arquiteturais:

* Requisitos SMART.
* Modelo FURPS+.
* O modelo ISO/IEC 9126.
* QAW

## **Requisitos SMART**

A técnica SMART nos permite avaliar se um determinado requisito é valido ou não, o ponto chave desta técnica é transformar um requisito com frases subjetivas em algum mais técnico.

Esta transformação deve seguir cinco passos e que as iniciais do método:

* **Specific(Especifico)**: Um requisito deve ser específico ou seja com nível adequado de detalhes
* **Measurable(Mensurável)**: Com um objetivo alcançável para facilitar assim o teste de validação.
* **Attainable(Atingível)**: O requisito deve ser viável
* **Realizable(Realizável)**:O requisito deve ser realizável,muitas vezes o requisito é atingível mas não realizável no prazo determinado do projeto.
* **Traceable(Rastreável)**: O requisito deve ser rastreável  desde sua concepção e especificação até o desenho, implementação e teste.

Como sempre vamos a um exemplo:

Requisito
"O sistema Web deve ser rápido e capaz de processar grandes quantidades de requisições simultâneas".

Após a aplicação do SMART: 
"A tela de cadastro de usuários Web deve possuir um tempo de resposta menor de 8 segundos e suportar até 20 usuários simultaneamente em horários de pico( 15:00 às 19:00)".

Por enquanto é só isso, nos vemos na próximo.
