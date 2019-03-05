---
layout: post
title: Estrutura Vuejs
date: 2018-05-01 14:20 -0300
excerpt: Vamos começar pela estrutura do Vuejs, a estrutura do projeto vai depender muito do template escolhido durante a criação do projeto...
img: estrutura_vuejs/estrutura_pastas_vuejs.jpg
tags: [vuejs]
---

Continuando nossos posts sobre o Vuejs. Esse artigo será separado em duas partes:
* Estrutura de pastas de um projeto Vuejs
* Templates webpack

Caso não tenha visto o primeiro post clique [aqui][primeiro-post].

## Estrutura Vuejs

Vamos começar pela estrutura do Vuejs, a estrutura do projeto vai depender muito do template escolhido durante a criação do projeto, abaixo listei as pastas ou arquivos mais comuns: 

* **build/**
Esse diretório contém as configurações reais do servidor de desenvolvimento e da compilação do webpack de produção.

* **src/**
Contêm todos código fonte da sua aplicação, a estrutura de como ficarão os arquivos é da escolha do desenvolvedor... então organize com cuidado.

* **static/**:
Diretório onde serão inseridos os arquivos estaticos(css,imagens etc) a ser processados pelo webpack, estes arquivos serão copiados diretamente no mesmo diretório em que os assets gerados pelo Werbpack, consulte qual gerenciador que você utilizará para mais detalhes.

* **test/unit**:
Contêm arquivos relcionados aos testes unitários.

* **test/e2e**:
Contêm arquivos testes e2e([End-to-End Testing][e2e]).

* **index.html**:
Este é o template para single page. Durante o desenvolvimento e as compilações, o Webpack gera assets e URLs desses assets gerados serão automaticamente injetadas nesse modelo para renderizar o HTML final.

* **package.json**:
Contém todas as dependências do projeto.


## Templates WebPack

Quando vamos criar um projeto vimos que podemos escolher a estrutura(template) do projeto, cada um desses templates utilizam estruturas de pasta diferente. O Vuejs utiliza como bundler tanto [webpack] quanto o [browserify]. Neste [link][webpack_browsefy] existe um post comparando os templates.


### Tipos Templates

* [webpack][webpack_vue]: É o pacote mais completo ou seja ele utiliza o webpack como bundler,possui   vue-loader com hot reload, javascript lint e testes unitários.
* [webpack-simple][webpack_simple]: utiliza o webpack como bundler mas com menos recursos.O webpack-simple não possui hot reload, javascript lint e nem testes unitários.
* [browserify][webpack_browserify]: usa o browserify como module bundler. Possui o vue-loader com hot reload, javascript lint e testes unitários.  
* [browserify-simple][webpack_browserify_simple]: usa o browserify como module bundler, sem hot reload, lint ou testes unitários.
* [simple][simple]: o template mais simples, não utiliza nenhum bundle possui apenas uma única página com o Vue sendo carregado através de um endereço [CDN](Content Delivery Network).


### Build.js
Se você já conhece o Vuejs provavelmente está se perguntando porque não falei sobre o arquivo build.js, não esqueci dele apenas deixe-o por último.

Basicamente o arquivo build.js é todo o conteúdo da pasta **src**, onde as páginas se transformam em javascript e assim são carregados em memória, deixando que toda alteração feita pelo desenvolvedor seja carrega e exibida em instantes.

### Babel
Mas quem faz essa transformação dos arquivos? O Vuejs utiliza o transpilador [Babel][babel] basicamente transcreve código escrito em ES2015(ecmascript 6) para ES5(ecmascript 5) garantindo assim compatibilidade entre os browsers.


Por enquanto é só isso, nos vemos na próxima.

[primeiro-post]: https://wteophilo.github.io/2018/04/03/ola-vuejs.html
[webpack_vue]: https://github.com/vuejs-templates/webpack
[webpack_simple]: https://github.com/vuejs-templates/webpack-simple
[webpack_browserify]: https://github.com/vuejs-templates/browserify
[webpack_browserify_simple]: https://github.com/vuejs-templates/browserify-simple
[simple]: https://github.com/vuejs-templates/simple
[CDN]: https://en.wikipedia.org/wiki/Content_delivery_network
[e2e]: https://vuejs-templates.github.io/webpack/e2e.html
[webpack_browsefy]: https://medium.freecodecamp.org/browserify-vs-webpack-b3d7ca08a0a9
[browserify]: http://browserify.org/
[webpack]: https://webpack.js.org/
[babel]: https://babeljs.io/
